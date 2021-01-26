// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of auth_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  Login$ call(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) {
    return Login$(
      email: email,
      password: password,
      response: response,
    );
  }

// ignore: unused_element
  LoginSuccessful successful(AppUser user) {
    return LoginSuccessful(
      user,
    );
  }

// ignore: unused_element
  LoginError error(Object error) {
    return LoginError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;
}

/// @nodoc
abstract class $Login$CopyWith<$Res> {
  factory $Login$CopyWith(Login$ value, $Res Function(Login$) then) =
      _$Login$CopyWithImpl<$Res>;
  $Res call({String email, String password, void Function(AppAction) response});
}

/// @nodoc
class _$Login$CopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $Login$CopyWith<$Res> {
  _$Login$CopyWithImpl(Login$ _value, $Res Function(Login$) _then)
      : super(_value, (v) => _then(v as Login$));

  @override
  Login$ get _value => super._value as Login$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object response = freezed,
  }) {
    return _then(Login$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      response: response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$Login$ implements Login$ {
  const _$Login$(
      {@required this.email, @required this.password, @required this.response})
      : assert(email != null),
        assert(password != null),
        assert(response != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(response);

  @override
  $Login$CopyWith<Login$> get copyWith =>
      _$Login$CopyWithImpl<Login$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email, password, response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email, password, response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Login$ implements Login {
  const factory Login$(
      {@required String email,
      @required String password,
      @required void Function(AppAction) response}) = _$Login$;

  String get email;
  String get password;
  void Function(AppAction) get response;
  $Login$CopyWith<Login$> get copyWith;
}

/// @nodoc
abstract class $LoginSuccessfulCopyWith<$Res> {
  factory $LoginSuccessfulCopyWith(
          LoginSuccessful value, $Res Function(LoginSuccessful) then) =
      _$LoginSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$LoginSuccessfulCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginSuccessfulCopyWith<$Res> {
  _$LoginSuccessfulCopyWithImpl(
      LoginSuccessful _value, $Res Function(LoginSuccessful) _then)
      : super(_value, (v) => _then(v as LoginSuccessful));

  @override
  LoginSuccessful get _value => super._value as LoginSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoginSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$LoginSuccessful implements LoginSuccessful {
  const _$LoginSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith =>
      _$LoginSuccessfulCopyWithImpl<LoginSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login {
  const factory LoginSuccessful(AppUser user) = _$LoginSuccessful;

  AppUser get user;
  $LoginSuccessfulCopyWith<LoginSuccessful> get copyWith;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
          LoginError value, $Res Function(LoginError) then) =
      _$LoginErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(LoginError _value, $Res Function(LoginError) _then)
      : super(_value, (v) => _then(v as LoginError));

  @override
  LoginError get _value => super._value as LoginError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(LoginError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$LoginError implements LoginError {
  const _$LoginError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'Login.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $LoginErrorCopyWith<LoginError> get copyWith =>
      _$LoginErrorCopyWithImpl<LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        String email, String password, void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(Login$ value), {
    @required Result successful(LoginSuccessful value),
    @required Result error(LoginError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(Login$ value), {
    Result successful(LoginSuccessful value),
    Result error(LoginError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(Object error) = _$LoginError;

  Object get error;
  $LoginErrorCopyWith<LoginError> get copyWith;
}

/// @nodoc
class _$SignUpTearOff {
  const _$SignUpTearOff();

// ignore: unused_element
  SignUp$ call(void Function(AppAction) response) {
    return SignUp$(
      response,
    );
  }

// ignore: unused_element
  SignUpSuccessful successful(AppUser user) {
    return SignUpSuccessful(
      user,
    );
  }

// ignore: unused_element
  SignUpError error(Object error) {
    return SignUpError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUp = _$SignUpTearOff();

/// @nodoc
mixin _$SignUp {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpCopyWithImpl<$Res> implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._value, this._then);

  final SignUp _value;
  // ignore: unused_field
  final $Res Function(SignUp) _then;
}

/// @nodoc
abstract class $SignUp$CopyWith<$Res> {
  factory $SignUp$CopyWith(SignUp$ value, $Res Function(SignUp$) then) =
      _$SignUp$CopyWithImpl<$Res>;
  $Res call({void Function(AppAction) response});
}

/// @nodoc
class _$SignUp$CopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUp$CopyWith<$Res> {
  _$SignUp$CopyWithImpl(SignUp$ _value, $Res Function(SignUp$) _then)
      : super(_value, (v) => _then(v as SignUp$));

  @override
  SignUp$ get _value => super._value as SignUp$;

  @override
  $Res call({
    Object response = freezed,
  }) {
    return _then(SignUp$(
      response == freezed
          ? _value.response
          : response as void Function(AppAction),
    ));
  }
}

/// @nodoc
class _$SignUp$ implements SignUp$ {
  const _$SignUp$(this.response) : assert(response != null);

  @override
  final void Function(AppAction) response;

  @override
  String toString() {
    return 'SignUp(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUp$ &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @override
  $SignUp$CopyWith<SignUp$> get copyWith =>
      _$SignUp$CopyWithImpl<SignUp$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(response);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignUp$ implements SignUp {
  const factory SignUp$(void Function(AppAction) response) = _$SignUp$;

  void Function(AppAction) get response;
  $SignUp$CopyWith<SignUp$> get copyWith;
}

/// @nodoc
abstract class $SignUpSuccessfulCopyWith<$Res> {
  factory $SignUpSuccessfulCopyWith(
          SignUpSuccessful value, $Res Function(SignUpSuccessful) then) =
      _$SignUpSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$SignUpSuccessfulCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpSuccessfulCopyWith<$Res> {
  _$SignUpSuccessfulCopyWithImpl(
      SignUpSuccessful _value, $Res Function(SignUpSuccessful) _then)
      : super(_value, (v) => _then(v as SignUpSuccessful));

  @override
  SignUpSuccessful get _value => super._value as SignUpSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignUpSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$SignUpSuccessful implements SignUpSuccessful {
  const _$SignUpSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'SignUp.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith =>
      _$SignUpSuccessfulCopyWithImpl<SignUpSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignUpSuccessful implements SignUp {
  const factory SignUpSuccessful(AppUser user) = _$SignUpSuccessful;

  AppUser get user;
  $SignUpSuccessfulCopyWith<SignUpSuccessful> get copyWith;
}

/// @nodoc
abstract class $SignUpErrorCopyWith<$Res> {
  factory $SignUpErrorCopyWith(
          SignUpError value, $Res Function(SignUpError) then) =
      _$SignUpErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$SignUpErrorCopyWithImpl<$Res> extends _$SignUpCopyWithImpl<$Res>
    implements $SignUpErrorCopyWith<$Res> {
  _$SignUpErrorCopyWithImpl(
      SignUpError _value, $Res Function(SignUpError) _then)
      : super(_value, (v) => _then(v as SignUpError));

  @override
  SignUpError get _value => super._value as SignUpError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignUpError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignUpError implements SignUpError {
  const _$SignUpError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'SignUp.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignUpErrorCopyWith<SignUpError> get copyWith =>
      _$SignUpErrorCopyWithImpl<SignUpError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(void Function(AppAction) response), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignUp$ value), {
    @required Result successful(SignUpSuccessful value),
    @required Result error(SignUpError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignUp$ value), {
    Result successful(SignUpSuccessful value),
    Result error(SignUpError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignUpError implements SignUp, ErrorAction {
  const factory SignUpError(Object error) = _$SignUpError;

  Object get error;
  $SignUpErrorCopyWith<SignUpError> get copyWith;
}

/// @nodoc
class _$ResetPasswordTearOff {
  const _$ResetPasswordTearOff();

// ignore: unused_element
  ResetPassword$ call({@required String email}) {
    return ResetPassword$(
      email: email,
    );
  }

// ignore: unused_element
  ResetPasswordSuccessful successful() {
    return const ResetPasswordSuccessful();
  }

// ignore: unused_element
  ResetPasswordError error(Object error) {
    return ResetPasswordError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResetPassword = _$ResetPasswordTearOff();

/// @nodoc
mixin _$ResetPassword {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(this._value, this._then);

  final ResetPassword _value;
  // ignore: unused_field
  final $Res Function(ResetPassword) _then;
}

/// @nodoc
abstract class $ResetPassword$CopyWith<$Res> {
  factory $ResetPassword$CopyWith(
          ResetPassword$ value, $Res Function(ResetPassword$) then) =
      _$ResetPassword$CopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPassword$CopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPassword$CopyWith<$Res> {
  _$ResetPassword$CopyWithImpl(
      ResetPassword$ _value, $Res Function(ResetPassword$) _then)
      : super(_value, (v) => _then(v as ResetPassword$));

  @override
  ResetPassword$ get _value => super._value as ResetPassword$;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(ResetPassword$(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$ResetPassword$ implements ResetPassword$ {
  const _$ResetPassword$({@required this.email}) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $ResetPassword$CopyWith<ResetPassword$> get copyWith =>
      _$ResetPassword$CopyWithImpl<ResetPassword$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ResetPassword$ implements ResetPassword {
  const factory ResetPassword$({@required String email}) = _$ResetPassword$;

  String get email;
  $ResetPassword$CopyWith<ResetPassword$> get copyWith;
}

/// @nodoc
abstract class $ResetPasswordSuccessfulCopyWith<$Res> {
  factory $ResetPasswordSuccessfulCopyWith(ResetPasswordSuccessful value,
          $Res Function(ResetPasswordSuccessful) then) =
      _$ResetPasswordSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordSuccessfulCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordSuccessfulCopyWith<$Res> {
  _$ResetPasswordSuccessfulCopyWithImpl(ResetPasswordSuccessful _value,
      $Res Function(ResetPasswordSuccessful) _then)
      : super(_value, (v) => _then(v as ResetPasswordSuccessful));

  @override
  ResetPasswordSuccessful get _value => super._value as ResetPasswordSuccessful;
}

/// @nodoc
class _$ResetPasswordSuccessful implements ResetPasswordSuccessful {
  const _$ResetPasswordSuccessful();

  @override
  String toString() {
    return 'ResetPassword.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetPasswordSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordSuccessful implements ResetPassword {
  const factory ResetPasswordSuccessful() = _$ResetPasswordSuccessful;
}

/// @nodoc
abstract class $ResetPasswordErrorCopyWith<$Res> {
  factory $ResetPasswordErrorCopyWith(
          ResetPasswordError value, $Res Function(ResetPasswordError) then) =
      _$ResetPasswordErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$ResetPasswordErrorCopyWithImpl<$Res>
    extends _$ResetPasswordCopyWithImpl<$Res>
    implements $ResetPasswordErrorCopyWith<$Res> {
  _$ResetPasswordErrorCopyWithImpl(
      ResetPasswordError _value, $Res Function(ResetPasswordError) _then)
      : super(_value, (v) => _then(v as ResetPasswordError));

  @override
  ResetPasswordError get _value => super._value as ResetPasswordError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(ResetPasswordError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$ResetPasswordError implements ResetPasswordError {
  const _$ResetPasswordError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'ResetPassword.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPasswordError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith =>
      _$ResetPasswordErrorCopyWithImpl<ResetPasswordError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String email), {
    @required Result successful(),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String email), {
    Result successful(),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(ResetPassword$ value), {
    @required Result successful(ResetPasswordSuccessful value),
    @required Result error(ResetPasswordError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(ResetPassword$ value), {
    Result successful(ResetPasswordSuccessful value),
    Result error(ResetPasswordError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordError implements ResetPassword, ErrorAction {
  const factory ResetPasswordError(Object error) = _$ResetPasswordError;

  Object get error;
  $ResetPasswordErrorCopyWith<ResetPasswordError> get copyWith;
}

/// @nodoc
class _$UpdateRegistrationInfoTearOff {
  const _$UpdateRegistrationInfoTearOff();

// ignore: unused_element
  UpdateRegistrationInfo$ call(
      {String email, String password, String username}) {
    return UpdateRegistrationInfo$(
      email: email,
      password: password,
      username: username,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateRegistrationInfo = _$UpdateRegistrationInfoTearOff();

/// @nodoc
mixin _$UpdateRegistrationInfo {
  String get email;
  String get password;
  String get username;

  $UpdateRegistrationInfoCopyWith<UpdateRegistrationInfo> get copyWith;
}

/// @nodoc
abstract class $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfoCopyWith(UpdateRegistrationInfo value,
          $Res Function(UpdateRegistrationInfo) then) =
      _$UpdateRegistrationInfoCopyWithImpl<$Res>;
  $Res call({String email, String password, String username});
}

/// @nodoc
class _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  _$UpdateRegistrationInfoCopyWithImpl(this._value, this._then);

  final UpdateRegistrationInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateRegistrationInfo) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
abstract class $UpdateRegistrationInfo$CopyWith<$Res>
    implements $UpdateRegistrationInfoCopyWith<$Res> {
  factory $UpdateRegistrationInfo$CopyWith(UpdateRegistrationInfo$ value,
          $Res Function(UpdateRegistrationInfo$) then) =
      _$UpdateRegistrationInfo$CopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String username});
}

/// @nodoc
class _$UpdateRegistrationInfo$CopyWithImpl<$Res>
    extends _$UpdateRegistrationInfoCopyWithImpl<$Res>
    implements $UpdateRegistrationInfo$CopyWith<$Res> {
  _$UpdateRegistrationInfo$CopyWithImpl(UpdateRegistrationInfo$ _value,
      $Res Function(UpdateRegistrationInfo$) _then)
      : super(_value, (v) => _then(v as UpdateRegistrationInfo$));

  @override
  UpdateRegistrationInfo$ get _value => super._value as UpdateRegistrationInfo$;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object username = freezed,
  }) {
    return _then(UpdateRegistrationInfo$(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UpdateRegistrationInfo$ implements UpdateRegistrationInfo$ {
  const _$UpdateRegistrationInfo$({this.email, this.password, this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'UpdateRegistrationInfo(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateRegistrationInfo$ &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(username);

  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith =>
      _$UpdateRegistrationInfo$CopyWithImpl<UpdateRegistrationInfo$>(
          this, _$identity);
}

abstract class UpdateRegistrationInfo$ implements UpdateRegistrationInfo {
  const factory UpdateRegistrationInfo$(
      {String email,
      String password,
      String username}) = _$UpdateRegistrationInfo$;

  @override
  String get email;
  @override
  String get password;
  @override
  String get username;
  @override
  $UpdateRegistrationInfo$CopyWith<UpdateRegistrationInfo$> get copyWith;
}

/// @nodoc
class _$IsLoggedTearOff {
  const _$IsLoggedTearOff();

// ignore: unused_element
  IsLogged$ call() {
    return const IsLogged$();
  }

// ignore: unused_element
  IsLoggedSuccessful successful(@nullable AppUser user) {
    return IsLoggedSuccessful(
      user,
    );
  }

// ignore: unused_element
  IsLoggedError error(Object error) {
    return IsLoggedError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $IsLogged = _$IsLoggedTearOff();

/// @nodoc
mixin _$IsLogged {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IsLogged$ value), {
    @required Result successful(IsLoggedSuccessful value),
    @required Result error(IsLoggedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IsLogged$ value), {
    Result successful(IsLoggedSuccessful value),
    Result error(IsLoggedError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $IsLoggedCopyWith<$Res> {
  factory $IsLoggedCopyWith(IsLogged value, $Res Function(IsLogged) then) =
      _$IsLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsLoggedCopyWithImpl<$Res> implements $IsLoggedCopyWith<$Res> {
  _$IsLoggedCopyWithImpl(this._value, this._then);

  final IsLogged _value;
  // ignore: unused_field
  final $Res Function(IsLogged) _then;
}

/// @nodoc
abstract class $IsLogged$CopyWith<$Res> {
  factory $IsLogged$CopyWith(IsLogged$ value, $Res Function(IsLogged$) then) =
      _$IsLogged$CopyWithImpl<$Res>;
}

/// @nodoc
class _$IsLogged$CopyWithImpl<$Res> extends _$IsLoggedCopyWithImpl<$Res>
    implements $IsLogged$CopyWith<$Res> {
  _$IsLogged$CopyWithImpl(IsLogged$ _value, $Res Function(IsLogged$) _then)
      : super(_value, (v) => _then(v as IsLogged$));

  @override
  IsLogged$ get _value => super._value as IsLogged$;
}

/// @nodoc
class _$IsLogged$ implements IsLogged$ {
  const _$IsLogged$();

  @override
  String toString() {
    return 'IsLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IsLogged$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IsLogged$ value), {
    @required Result successful(IsLoggedSuccessful value),
    @required Result error(IsLoggedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IsLogged$ value), {
    Result successful(IsLoggedSuccessful value),
    Result error(IsLoggedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class IsLogged$ implements IsLogged {
  const factory IsLogged$() = _$IsLogged$;
}

/// @nodoc
abstract class $IsLoggedSuccessfulCopyWith<$Res> {
  factory $IsLoggedSuccessfulCopyWith(
          IsLoggedSuccessful value, $Res Function(IsLoggedSuccessful) then) =
      _$IsLoggedSuccessfulCopyWithImpl<$Res>;
  $Res call({@nullable AppUser user});
}

/// @nodoc
class _$IsLoggedSuccessfulCopyWithImpl<$Res>
    extends _$IsLoggedCopyWithImpl<$Res>
    implements $IsLoggedSuccessfulCopyWith<$Res> {
  _$IsLoggedSuccessfulCopyWithImpl(
      IsLoggedSuccessful _value, $Res Function(IsLoggedSuccessful) _then)
      : super(_value, (v) => _then(v as IsLoggedSuccessful));

  @override
  IsLoggedSuccessful get _value => super._value as IsLoggedSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(IsLoggedSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$IsLoggedSuccessful implements IsLoggedSuccessful {
  const _$IsLoggedSuccessful(@nullable this.user);

  @override
  @nullable
  final AppUser user;

  @override
  String toString() {
    return 'IsLogged.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsLoggedSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $IsLoggedSuccessfulCopyWith<IsLoggedSuccessful> get copyWith =>
      _$IsLoggedSuccessfulCopyWithImpl<IsLoggedSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IsLogged$ value), {
    @required Result successful(IsLoggedSuccessful value),
    @required Result error(IsLoggedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IsLogged$ value), {
    Result successful(IsLoggedSuccessful value),
    Result error(IsLoggedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class IsLoggedSuccessful implements IsLogged {
  const factory IsLoggedSuccessful(@nullable AppUser user) =
      _$IsLoggedSuccessful;

  @nullable
  AppUser get user;
  $IsLoggedSuccessfulCopyWith<IsLoggedSuccessful> get copyWith;
}

/// @nodoc
abstract class $IsLoggedErrorCopyWith<$Res> {
  factory $IsLoggedErrorCopyWith(
          IsLoggedError value, $Res Function(IsLoggedError) then) =
      _$IsLoggedErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$IsLoggedErrorCopyWithImpl<$Res> extends _$IsLoggedCopyWithImpl<$Res>
    implements $IsLoggedErrorCopyWith<$Res> {
  _$IsLoggedErrorCopyWithImpl(
      IsLoggedError _value, $Res Function(IsLoggedError) _then)
      : super(_value, (v) => _then(v as IsLoggedError));

  @override
  IsLoggedError get _value => super._value as IsLoggedError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(IsLoggedError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$IsLoggedError implements IsLoggedError {
  const _$IsLoggedError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'IsLogged.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsLoggedError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $IsLoggedErrorCopyWith<IsLoggedError> get copyWith =>
      _$IsLoggedErrorCopyWithImpl<IsLoggedError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(@nullable AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(@nullable AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(IsLogged$ value), {
    @required Result successful(IsLoggedSuccessful value),
    @required Result error(IsLoggedError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(IsLogged$ value), {
    Result successful(IsLoggedSuccessful value),
    Result error(IsLoggedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class IsLoggedError implements IsLogged, ErrorAction {
  const factory IsLoggedError(Object error) = _$IsLoggedError;

  Object get error;
  $IsLoggedErrorCopyWith<IsLoggedError> get copyWith;
}

/// @nodoc
class _$SignOutTearOff {
  const _$SignOutTearOff();

// ignore: unused_element
  SignOut$ call() {
    return const SignOut$();
  }

// ignore: unused_element
  SignOutSuccessful successful() {
    return const SignOutSuccessful();
  }

// ignore: unused_element
  SignOutError error(StateError error) {
    return SignOutError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignOut = _$SignOutTearOff();

/// @nodoc
mixin _$SignOut {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(this._value, this._then);

  final SignOut _value;
  // ignore: unused_field
  final $Res Function(SignOut) _then;
}

/// @nodoc
abstract class $SignOut$CopyWith<$Res> {
  factory $SignOut$CopyWith(SignOut$ value, $Res Function(SignOut$) then) =
      _$SignOut$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOut$CopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOut$CopyWith<$Res> {
  _$SignOut$CopyWithImpl(SignOut$ _value, $Res Function(SignOut$) _then)
      : super(_value, (v) => _then(v as SignOut$));

  @override
  SignOut$ get _value => super._value as SignOut$;
}

/// @nodoc
class _$SignOut$ implements SignOut$ {
  const _$SignOut$();

  @override
  String toString() {
    return 'SignOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut$);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignOut$ implements SignOut {
  const factory SignOut$() = _$SignOut$;
}

/// @nodoc
abstract class $SignOutSuccessfulCopyWith<$Res> {
  factory $SignOutSuccessfulCopyWith(
          SignOutSuccessful value, $Res Function(SignOutSuccessful) then) =
      _$SignOutSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutSuccessfulCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutSuccessfulCopyWith<$Res> {
  _$SignOutSuccessfulCopyWithImpl(
      SignOutSuccessful _value, $Res Function(SignOutSuccessful) _then)
      : super(_value, (v) => _then(v as SignOutSuccessful));

  @override
  SignOutSuccessful get _value => super._value as SignOutSuccessful;
}

/// @nodoc
class _$SignOutSuccessful implements SignOutSuccessful {
  const _$SignOutSuccessful();

  @override
  String toString() {
    return 'SignOut.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOutSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignOutSuccessful implements SignOut {
  const factory SignOutSuccessful() = _$SignOutSuccessful;
}

/// @nodoc
abstract class $SignOutErrorCopyWith<$Res> {
  factory $SignOutErrorCopyWith(
          SignOutError value, $Res Function(SignOutError) then) =
      _$SignOutErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$SignOutErrorCopyWithImpl<$Res> extends _$SignOutCopyWithImpl<$Res>
    implements $SignOutErrorCopyWith<$Res> {
  _$SignOutErrorCopyWithImpl(
      SignOutError _value, $Res Function(SignOutError) _then)
      : super(_value, (v) => _then(v as SignOutError));

  @override
  SignOutError get _value => super._value as SignOutError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SignOutError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SignOutError implements SignOutError {
  const _$SignOutError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'SignOut.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignOutError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SignOutErrorCopyWith<SignOutError> get copyWith =>
      _$SignOutErrorCopyWithImpl<SignOutError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SignOut$ value), {
    @required Result successful(SignOutSuccessful value),
    @required Result error(SignOutError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SignOut$ value), {
    Result successful(SignOutSuccessful value),
    Result error(SignOutError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignOutError implements SignOut, ErrorAction {
  const factory SignOutError(StateError error) = _$SignOutError;

  StateError get error;
  $SignOutErrorCopyWith<SignOutError> get copyWith;
}

/// @nodoc
class _$SearchUsersTearOff {
  const _$SearchUsersTearOff();

// ignore: unused_element
  SearchUsers$ call(String query) {
    return SearchUsers$(
      query,
    );
  }

// ignore: unused_element
  SearchUsersSuccessful successful(List<AppUser> users) {
    return SearchUsersSuccessful(
      users,
    );
  }

// ignore: unused_element
  SearchUsersError error(StateError error) {
    return SearchUsersError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchUsers = _$SearchUsersTearOff();

/// @nodoc
mixin _$SearchUsers {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(StateError error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(StateError error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchUsersCopyWith<$Res> {
  factory $SearchUsersCopyWith(
          SearchUsers value, $Res Function(SearchUsers) then) =
      _$SearchUsersCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchUsersCopyWithImpl<$Res> implements $SearchUsersCopyWith<$Res> {
  _$SearchUsersCopyWithImpl(this._value, this._then);

  final SearchUsers _value;
  // ignore: unused_field
  final $Res Function(SearchUsers) _then;
}

/// @nodoc
abstract class $SearchUsers$CopyWith<$Res> {
  factory $SearchUsers$CopyWith(
          SearchUsers$ value, $Res Function(SearchUsers$) then) =
      _$SearchUsers$CopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchUsers$CopyWithImpl<$Res> extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsers$CopyWith<$Res> {
  _$SearchUsers$CopyWithImpl(
      SearchUsers$ _value, $Res Function(SearchUsers$) _then)
      : super(_value, (v) => _then(v as SearchUsers$));

  @override
  SearchUsers$ get _value => super._value as SearchUsers$;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(SearchUsers$(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$SearchUsers$ implements SearchUsers$ {
  const _$SearchUsers$(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchUsers(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsers$ &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchUsers$CopyWith<SearchUsers$> get copyWith =>
      _$SearchUsers$CopyWithImpl<SearchUsers$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SearchUsers$ implements SearchUsers {
  const factory SearchUsers$(String query) = _$SearchUsers$;

  String get query;
  $SearchUsers$CopyWith<SearchUsers$> get copyWith;
}

/// @nodoc
abstract class $SearchUsersSuccessfulCopyWith<$Res> {
  factory $SearchUsersSuccessfulCopyWith(SearchUsersSuccessful value,
          $Res Function(SearchUsersSuccessful) then) =
      _$SearchUsersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<AppUser> users});
}

/// @nodoc
class _$SearchUsersSuccessfulCopyWithImpl<$Res>
    extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsersSuccessfulCopyWith<$Res> {
  _$SearchUsersSuccessfulCopyWithImpl(
      SearchUsersSuccessful _value, $Res Function(SearchUsersSuccessful) _then)
      : super(_value, (v) => _then(v as SearchUsersSuccessful));

  @override
  SearchUsersSuccessful get _value => super._value as SearchUsersSuccessful;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(SearchUsersSuccessful(
      users == freezed ? _value.users : users as List<AppUser>,
    ));
  }
}

/// @nodoc
class _$SearchUsersSuccessful implements SearchUsersSuccessful {
  const _$SearchUsersSuccessful(this.users) : assert(users != null);

  @override
  final List<AppUser> users;

  @override
  String toString() {
    return 'SearchUsers.successful(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsersSuccessful &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  $SearchUsersSuccessfulCopyWith<SearchUsersSuccessful> get copyWith =>
      _$SearchUsersSuccessfulCopyWithImpl<SearchUsersSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SearchUsersSuccessful implements SearchUsers {
  const factory SearchUsersSuccessful(List<AppUser> users) =
      _$SearchUsersSuccessful;

  List<AppUser> get users;
  $SearchUsersSuccessfulCopyWith<SearchUsersSuccessful> get copyWith;
}

/// @nodoc
abstract class $SearchUsersErrorCopyWith<$Res> {
  factory $SearchUsersErrorCopyWith(
          SearchUsersError value, $Res Function(SearchUsersError) then) =
      _$SearchUsersErrorCopyWithImpl<$Res>;
  $Res call({StateError error});
}

/// @nodoc
class _$SearchUsersErrorCopyWithImpl<$Res>
    extends _$SearchUsersCopyWithImpl<$Res>
    implements $SearchUsersErrorCopyWith<$Res> {
  _$SearchUsersErrorCopyWithImpl(
      SearchUsersError _value, $Res Function(SearchUsersError) _then)
      : super(_value, (v) => _then(v as SearchUsersError));

  @override
  SearchUsersError get _value => super._value as SearchUsersError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(SearchUsersError(
      error == freezed ? _value.error : error as StateError,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$SearchUsersError implements SearchUsersError {
  const _$SearchUsersError(this.error) : assert(error != null);

  @override
  final StateError error;

  @override
  String toString() {
    return 'SearchUsers.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchUsersError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $SearchUsersErrorCopyWith<SearchUsersError> get copyWith =>
      _$SearchUsersErrorCopyWithImpl<SearchUsersError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String query), {
    @required Result successful(List<AppUser> users),
    @required Result error(StateError error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String query), {
    Result successful(List<AppUser> users),
    Result error(StateError error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(SearchUsers$ value), {
    @required Result successful(SearchUsersSuccessful value),
    @required Result error(SearchUsersError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(SearchUsers$ value), {
    Result successful(SearchUsersSuccessful value),
    Result error(SearchUsersError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchUsersError implements SearchUsers, ErrorAction {
  const factory SearchUsersError(StateError error) = _$SearchUsersError;

  StateError get error;
  $SearchUsersErrorCopyWith<SearchUsersError> get copyWith;
}

/// @nodoc
class _$GetUserTearOff {
  const _$GetUserTearOff();

// ignore: unused_element
  GetUser$ call(String uid) {
    return GetUser$(
      uid,
    );
  }

// ignore: unused_element
  GetUserSuccessful successful(AppUser user) {
    return GetUserSuccessful(
      user,
    );
  }

// ignore: unused_element
  GetUserError error(Object error) {
    return GetUserError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetUser = _$GetUserTearOff();

/// @nodoc
mixin _$GetUser {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetUserCopyWith<$Res> {
  factory $GetUserCopyWith(GetUser value, $Res Function(GetUser) then) =
      _$GetUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserCopyWithImpl<$Res> implements $GetUserCopyWith<$Res> {
  _$GetUserCopyWithImpl(this._value, this._then);

  final GetUser _value;
  // ignore: unused_field
  final $Res Function(GetUser) _then;
}

/// @nodoc
abstract class $GetUser$CopyWith<$Res> {
  factory $GetUser$CopyWith(GetUser$ value, $Res Function(GetUser$) then) =
      _$GetUser$CopyWithImpl<$Res>;
  $Res call({String uid});
}

/// @nodoc
class _$GetUser$CopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUser$CopyWith<$Res> {
  _$GetUser$CopyWithImpl(GetUser$ _value, $Res Function(GetUser$) _then)
      : super(_value, (v) => _then(v as GetUser$));

  @override
  GetUser$ get _value => super._value as GetUser$;

  @override
  $Res call({
    Object uid = freezed,
  }) {
    return _then(GetUser$(
      uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$GetUser$ implements GetUser$ {
  const _$GetUser$(this.uid) : assert(uid != null);

  @override
  final String uid;

  @override
  String toString() {
    return 'GetUser(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUser$ &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uid);

  @override
  $GetUser$CopyWith<GetUser$> get copyWith =>
      _$GetUser$CopyWithImpl<GetUser$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(uid);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetUser$ implements GetUser {
  const factory GetUser$(String uid) = _$GetUser$;

  String get uid;
  $GetUser$CopyWith<GetUser$> get copyWith;
}

/// @nodoc
abstract class $GetUserSuccessfulCopyWith<$Res> {
  factory $GetUserSuccessfulCopyWith(
          GetUserSuccessful value, $Res Function(GetUserSuccessful) then) =
      _$GetUserSuccessfulCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class _$GetUserSuccessfulCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserSuccessfulCopyWith<$Res> {
  _$GetUserSuccessfulCopyWithImpl(
      GetUserSuccessful _value, $Res Function(GetUserSuccessful) _then)
      : super(_value, (v) => _then(v as GetUserSuccessful));

  @override
  GetUserSuccessful get _value => super._value as GetUserSuccessful;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(GetUserSuccessful(
      user == freezed ? _value.user : user as AppUser,
    ));
  }
}

/// @nodoc
class _$GetUserSuccessful implements GetUserSuccessful {
  const _$GetUserSuccessful(this.user) : assert(user != null);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'GetUser.successful(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserSuccessful &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith =>
      _$GetUserSuccessfulCopyWithImpl<GetUserSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetUserSuccessful implements GetUser {
  const factory GetUserSuccessful(AppUser user) = _$GetUserSuccessful;

  AppUser get user;
  $GetUserSuccessfulCopyWith<GetUserSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetUserErrorCopyWith<$Res> {
  factory $GetUserErrorCopyWith(
          GetUserError value, $Res Function(GetUserError) then) =
      _$GetUserErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$GetUserErrorCopyWithImpl<$Res> extends _$GetUserCopyWithImpl<$Res>
    implements $GetUserErrorCopyWith<$Res> {
  _$GetUserErrorCopyWithImpl(
      GetUserError _value, $Res Function(GetUserError) _then)
      : super(_value, (v) => _then(v as GetUserError));

  @override
  GetUserError get _value => super._value as GetUserError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetUserError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$GetUserError implements GetUserError {
  const _$GetUserError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'GetUser.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      _$GetUserErrorCopyWithImpl<GetUserError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String uid), {
    @required Result successful(AppUser user),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String uid), {
    Result successful(AppUser user),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetUser$ value), {
    @required Result successful(GetUserSuccessful value),
    @required Result error(GetUserError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetUser$ value), {
    Result successful(GetUserSuccessful value),
    Result error(GetUserError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetUserError implements GetUser, ErrorAction {
  const factory GetUserError(Object error) = _$GetUserError;

  Object get error;
  $GetUserErrorCopyWith<GetUserError> get copyWith;
}

/// @nodoc
class _$UpdateFollowingTearOff {
  const _$UpdateFollowingTearOff();

// ignore: unused_element
  UpdateFollowing$ call({String add, String remove}) {
    return UpdateFollowing$(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateFollowingSuccessful successful({String add, String remove}) {
    return UpdateFollowingSuccessful(
      add: add,
      remove: remove,
    );
  }

// ignore: unused_element
  UpdateFollowingError error(Object error) {
    return UpdateFollowingError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateFollowing = _$UpdateFollowingTearOff();

/// @nodoc
mixin _$UpdateFollowing {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    @required Result successful(UpdateFollowingSuccessful value),
    @required Result error(UpdateFollowingError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    Result successful(UpdateFollowingSuccessful value),
    Result error(UpdateFollowingError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UpdateFollowingCopyWith<$Res> {
  factory $UpdateFollowingCopyWith(
          UpdateFollowing value, $Res Function(UpdateFollowing) then) =
      _$UpdateFollowingCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateFollowingCopyWithImpl<$Res>
    implements $UpdateFollowingCopyWith<$Res> {
  _$UpdateFollowingCopyWithImpl(this._value, this._then);

  final UpdateFollowing _value;
  // ignore: unused_field
  final $Res Function(UpdateFollowing) _then;
}

/// @nodoc
abstract class $UpdateFollowing$CopyWith<$Res> {
  factory $UpdateFollowing$CopyWith(
          UpdateFollowing$ value, $Res Function(UpdateFollowing$) then) =
      _$UpdateFollowing$CopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateFollowing$CopyWithImpl<$Res>
    extends _$UpdateFollowingCopyWithImpl<$Res>
    implements $UpdateFollowing$CopyWith<$Res> {
  _$UpdateFollowing$CopyWithImpl(
      UpdateFollowing$ _value, $Res Function(UpdateFollowing$) _then)
      : super(_value, (v) => _then(v as UpdateFollowing$));

  @override
  UpdateFollowing$ get _value => super._value as UpdateFollowing$;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateFollowing$(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateFollowing$ implements UpdateFollowing$ {
  const _$UpdateFollowing$({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateFollowing(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFollowing$ &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateFollowing$CopyWith<UpdateFollowing$> get copyWith =>
      _$UpdateFollowing$CopyWithImpl<UpdateFollowing$>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    @required Result successful(UpdateFollowingSuccessful value),
    @required Result error(UpdateFollowingError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    Result successful(UpdateFollowingSuccessful value),
    Result error(UpdateFollowingError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateFollowing$ implements UpdateFollowing {
  const factory UpdateFollowing$({String add, String remove}) =
      _$UpdateFollowing$;

  String get add;
  String get remove;
  $UpdateFollowing$CopyWith<UpdateFollowing$> get copyWith;
}

/// @nodoc
abstract class $UpdateFollowingSuccessfulCopyWith<$Res> {
  factory $UpdateFollowingSuccessfulCopyWith(UpdateFollowingSuccessful value,
          $Res Function(UpdateFollowingSuccessful) then) =
      _$UpdateFollowingSuccessfulCopyWithImpl<$Res>;
  $Res call({String add, String remove});
}

/// @nodoc
class _$UpdateFollowingSuccessfulCopyWithImpl<$Res>
    extends _$UpdateFollowingCopyWithImpl<$Res>
    implements $UpdateFollowingSuccessfulCopyWith<$Res> {
  _$UpdateFollowingSuccessfulCopyWithImpl(UpdateFollowingSuccessful _value,
      $Res Function(UpdateFollowingSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateFollowingSuccessful));

  @override
  UpdateFollowingSuccessful get _value =>
      super._value as UpdateFollowingSuccessful;

  @override
  $Res call({
    Object add = freezed,
    Object remove = freezed,
  }) {
    return _then(UpdateFollowingSuccessful(
      add: add == freezed ? _value.add : add as String,
      remove: remove == freezed ? _value.remove : remove as String,
    ));
  }
}

/// @nodoc
class _$UpdateFollowingSuccessful implements UpdateFollowingSuccessful {
  const _$UpdateFollowingSuccessful({this.add, this.remove});

  @override
  final String add;
  @override
  final String remove;

  @override
  String toString() {
    return 'UpdateFollowing.successful(add: $add, remove: $remove)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFollowingSuccessful &&
            (identical(other.add, add) ||
                const DeepCollectionEquality().equals(other.add, add)) &&
            (identical(other.remove, remove) ||
                const DeepCollectionEquality().equals(other.remove, remove)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(add) ^
      const DeepCollectionEquality().hash(remove);

  @override
  $UpdateFollowingSuccessfulCopyWith<UpdateFollowingSuccessful> get copyWith =>
      _$UpdateFollowingSuccessfulCopyWithImpl<UpdateFollowingSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(add, remove);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(add, remove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    @required Result successful(UpdateFollowingSuccessful value),
    @required Result error(UpdateFollowingError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    Result successful(UpdateFollowingSuccessful value),
    Result error(UpdateFollowingError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateFollowingSuccessful implements UpdateFollowing {
  const factory UpdateFollowingSuccessful({String add, String remove}) =
      _$UpdateFollowingSuccessful;

  String get add;
  String get remove;
  $UpdateFollowingSuccessfulCopyWith<UpdateFollowingSuccessful> get copyWith;
}

/// @nodoc
abstract class $UpdateFollowingErrorCopyWith<$Res> {
  factory $UpdateFollowingErrorCopyWith(UpdateFollowingError value,
          $Res Function(UpdateFollowingError) then) =
      _$UpdateFollowingErrorCopyWithImpl<$Res>;
  $Res call({Object error});
}

/// @nodoc
class _$UpdateFollowingErrorCopyWithImpl<$Res>
    extends _$UpdateFollowingCopyWithImpl<$Res>
    implements $UpdateFollowingErrorCopyWith<$Res> {
  _$UpdateFollowingErrorCopyWithImpl(
      UpdateFollowingError _value, $Res Function(UpdateFollowingError) _then)
      : super(_value, (v) => _then(v as UpdateFollowingError));

  @override
  UpdateFollowingError get _value => super._value as UpdateFollowingError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(UpdateFollowingError(
      error == freezed ? _value.error : error,
    ));
  }
}

@Implements(ErrorAction)

/// @nodoc
class _$UpdateFollowingError implements UpdateFollowingError {
  const _$UpdateFollowingError(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'UpdateFollowing.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateFollowingError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $UpdateFollowingErrorCopyWith<UpdateFollowingError> get copyWith =>
      _$UpdateFollowingErrorCopyWithImpl<UpdateFollowingError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String add, String remove), {
    @required Result successful(String add, String remove),
    @required Result error(Object error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String add, String remove), {
    Result successful(String add, String remove),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    @required Result successful(UpdateFollowingSuccessful value),
    @required Result error(UpdateFollowingError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(UpdateFollowing$ value), {
    Result successful(UpdateFollowingSuccessful value),
    Result error(UpdateFollowingError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateFollowingError implements UpdateFollowing, ErrorAction {
  const factory UpdateFollowingError(Object error) = _$UpdateFollowingError;

  Object get error;
  $UpdateFollowingErrorCopyWith<UpdateFollowingError> get copyWith;
}
