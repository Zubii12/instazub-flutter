import 'package:flutter/material.dart';
import 'package:instazub/src/presentation/add_post/add_post_page.dart';
import 'package:instazub/src/presentation/feed/feed_page.dart';
import 'package:instazub/src/presentation/notification/notification_page.dart';
import 'package:instazub/src/presentation/profile/profile_page.dart';
import 'package:instazub/src/presentation/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this) //
      ..addListener(() {
        setState(() {
          page = _tabController.index;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          const FeedPage(),
          const SearchPage(),
          const AddPostPage(),
          NotificationPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (int index) {
          setState(() => page = index);
          _tabController.animateTo(index);
        },
        fixedColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            label: 'AddPost',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: Colors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
