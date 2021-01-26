import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instazub/src/actions/index.dart';
import 'package:instazub/src/containers/index.dart';
import 'package:instazub/src/models/index.dart';
import 'package:instazub/src/presentation/routes.dart';
import 'package:photo_view/photo_view.dart';

class AddPostPage extends StatelessWidget {
  const AddPostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostInfoContainer(
      builder: (BuildContext context, PostInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('New post'),
            centerTitle: true,
            leading: InkWell(
              child: const Icon(Icons.clear),
              onTap: () {
                Navigator.popAndPushNamed(context, AppRoutes.homePage);
              },
            ),
            backgroundColor: Colors.black,
            actions: <Widget>[
              FlatButton(
                child: const Text('Next', style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  if (info.paths.isNotEmpty) {
                    Navigator.pushNamed(context, AppRoutes.postDetails);
                  } else {
                    // show error
                  }
                },
              ),
            ],
          ),
          body: Column(
            children: <Widget>[
              SizedBox(
                child: info.localPaths.isNotEmpty ? PhotoView(imageProvider: AssetImage(info.localPaths.last)) : null,
                height: MediaQuery.of(context).size.height - 400,
                width: MediaQuery.of(context).size.width,
              ),
              GridView.builder(
                //scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
                itemCount: info.paths.length,
                itemBuilder: (BuildContext context, int index) {
                  final String path = info.paths[index];
                  return GridTile(
                    child: InkWell(
                      child: Image.file(
                        File(path),
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addLocalImage: path));
                      },
                    ),
                    header: GridTileBar(
                      title: const Text(''),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(removeImage: path));
                          StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(removeLocalImage: path));
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              PickedFile file;
              try {
                file = await ImagePicker().getImage(source: ImageSource.gallery);
              } catch (e) {
                print(e);
              }
              if (file != null) {
                StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addImage: file.path));
              }
            },
          ),
        );
      },
    );
  }
}
