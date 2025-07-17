// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LogInWithGoogle value)?  logInWithGoogle,TResult Function( _LogInWithFaceBook value)?  logInWithFaceBook,TResult Function( _SendOtpforMobile value)?  sendOtpforMobile,TResult Function( _VerifytpforMobile value)?  verifytpforMobile,TResult Function( _CheckLoggedIn value)?  checkLoggedIn,TResult Function( _Logout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogInWithGoogle() when logInWithGoogle != null:
return logInWithGoogle(_that);case _LogInWithFaceBook() when logInWithFaceBook != null:
return logInWithFaceBook(_that);case _SendOtpforMobile() when sendOtpforMobile != null:
return sendOtpforMobile(_that);case _VerifytpforMobile() when verifytpforMobile != null:
return verifytpforMobile(_that);case _CheckLoggedIn() when checkLoggedIn != null:
return checkLoggedIn(_that);case _Logout() when logout != null:
return logout(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LogInWithGoogle value)  logInWithGoogle,required TResult Function( _LogInWithFaceBook value)  logInWithFaceBook,required TResult Function( _SendOtpforMobile value)  sendOtpforMobile,required TResult Function( _VerifytpforMobile value)  verifytpforMobile,required TResult Function( _CheckLoggedIn value)  checkLoggedIn,required TResult Function( _Logout value)  logout,}){
final _that = this;
switch (_that) {
case _LogInWithGoogle():
return logInWithGoogle(_that);case _LogInWithFaceBook():
return logInWithFaceBook(_that);case _SendOtpforMobile():
return sendOtpforMobile(_that);case _VerifytpforMobile():
return verifytpforMobile(_that);case _CheckLoggedIn():
return checkLoggedIn(_that);case _Logout():
return logout(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LogInWithGoogle value)?  logInWithGoogle,TResult? Function( _LogInWithFaceBook value)?  logInWithFaceBook,TResult? Function( _SendOtpforMobile value)?  sendOtpforMobile,TResult? Function( _VerifytpforMobile value)?  verifytpforMobile,TResult? Function( _CheckLoggedIn value)?  checkLoggedIn,TResult? Function( _Logout value)?  logout,}){
final _that = this;
switch (_that) {
case _LogInWithGoogle() when logInWithGoogle != null:
return logInWithGoogle(_that);case _LogInWithFaceBook() when logInWithFaceBook != null:
return logInWithFaceBook(_that);case _SendOtpforMobile() when sendOtpforMobile != null:
return sendOtpforMobile(_that);case _VerifytpforMobile() when verifytpforMobile != null:
return verifytpforMobile(_that);case _CheckLoggedIn() when checkLoggedIn != null:
return checkLoggedIn(_that);case _Logout() when logout != null:
return logout(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  logInWithGoogle,TResult Function()?  logInWithFaceBook,TResult Function( String mobileNumber)?  sendOtpforMobile,TResult Function( String mobileNumber,  int otp)?  verifytpforMobile,TResult Function()?  checkLoggedIn,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogInWithGoogle() when logInWithGoogle != null:
return logInWithGoogle();case _LogInWithFaceBook() when logInWithFaceBook != null:
return logInWithFaceBook();case _SendOtpforMobile() when sendOtpforMobile != null:
return sendOtpforMobile(_that.mobileNumber);case _VerifytpforMobile() when verifytpforMobile != null:
return verifytpforMobile(_that.mobileNumber,_that.otp);case _CheckLoggedIn() when checkLoggedIn != null:
return checkLoggedIn();case _Logout() when logout != null:
return logout();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  logInWithGoogle,required TResult Function()  logInWithFaceBook,required TResult Function( String mobileNumber)  sendOtpforMobile,required TResult Function( String mobileNumber,  int otp)  verifytpforMobile,required TResult Function()  checkLoggedIn,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _LogInWithGoogle():
return logInWithGoogle();case _LogInWithFaceBook():
return logInWithFaceBook();case _SendOtpforMobile():
return sendOtpforMobile(_that.mobileNumber);case _VerifytpforMobile():
return verifytpforMobile(_that.mobileNumber,_that.otp);case _CheckLoggedIn():
return checkLoggedIn();case _Logout():
return logout();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  logInWithGoogle,TResult? Function()?  logInWithFaceBook,TResult? Function( String mobileNumber)?  sendOtpforMobile,TResult? Function( String mobileNumber,  int otp)?  verifytpforMobile,TResult? Function()?  checkLoggedIn,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _LogInWithGoogle() when logInWithGoogle != null:
return logInWithGoogle();case _LogInWithFaceBook() when logInWithFaceBook != null:
return logInWithFaceBook();case _SendOtpforMobile() when sendOtpforMobile != null:
return sendOtpforMobile(_that.mobileNumber);case _VerifytpforMobile() when verifytpforMobile != null:
return verifytpforMobile(_that.mobileNumber,_that.otp);case _CheckLoggedIn() when checkLoggedIn != null:
return checkLoggedIn();case _Logout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _LogInWithGoogle implements AuthEvent {
  const _LogInWithGoogle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogInWithGoogle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logInWithGoogle()';
}


}




/// @nodoc


class _LogInWithFaceBook implements AuthEvent {
  const _LogInWithFaceBook();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogInWithFaceBook);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logInWithFaceBook()';
}


}




/// @nodoc


class _SendOtpforMobile implements AuthEvent {
  const _SendOtpforMobile({required this.mobileNumber});
  

 final  String mobileNumber;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendOtpforMobileCopyWith<_SendOtpforMobile> get copyWith => __$SendOtpforMobileCopyWithImpl<_SendOtpforMobile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendOtpforMobile&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber);

@override
String toString() {
  return 'AuthEvent.sendOtpforMobile(mobileNumber: $mobileNumber)';
}


}

/// @nodoc
abstract mixin class _$SendOtpforMobileCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$SendOtpforMobileCopyWith(_SendOtpforMobile value, $Res Function(_SendOtpforMobile) _then) = __$SendOtpforMobileCopyWithImpl;
@useResult
$Res call({
 String mobileNumber
});




}
/// @nodoc
class __$SendOtpforMobileCopyWithImpl<$Res>
    implements _$SendOtpforMobileCopyWith<$Res> {
  __$SendOtpforMobileCopyWithImpl(this._self, this._then);

  final _SendOtpforMobile _self;
  final $Res Function(_SendOtpforMobile) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,}) {
  return _then(_SendOtpforMobile(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _VerifytpforMobile implements AuthEvent {
  const _VerifytpforMobile({required this.mobileNumber, required this.otp});
  

 final  String mobileNumber;
 final  int otp;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifytpforMobileCopyWith<_VerifytpforMobile> get copyWith => __$VerifytpforMobileCopyWithImpl<_VerifytpforMobile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifytpforMobile&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.otp, otp) || other.otp == otp));
}


@override
int get hashCode => Object.hash(runtimeType,mobileNumber,otp);

@override
String toString() {
  return 'AuthEvent.verifytpforMobile(mobileNumber: $mobileNumber, otp: $otp)';
}


}

/// @nodoc
abstract mixin class _$VerifytpforMobileCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$VerifytpforMobileCopyWith(_VerifytpforMobile value, $Res Function(_VerifytpforMobile) _then) = __$VerifytpforMobileCopyWithImpl;
@useResult
$Res call({
 String mobileNumber, int otp
});




}
/// @nodoc
class __$VerifytpforMobileCopyWithImpl<$Res>
    implements _$VerifytpforMobileCopyWith<$Res> {
  __$VerifytpforMobileCopyWithImpl(this._self, this._then);

  final _VerifytpforMobile _self;
  final $Res Function(_VerifytpforMobile) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mobileNumber = null,Object? otp = null,}) {
  return _then(_VerifytpforMobile(
mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CheckLoggedIn implements AuthEvent {
  const _CheckLoggedIn();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckLoggedIn);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkLoggedIn()';
}


}




/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc
mixin _$AuthState {

 bool get isLoading; bool get isError; bool get isOtpSentForPhone; bool get isOtpSentForEmail; bool get isVerified; bool get isLoggedIn; String? get phoneNumber; String? get email; String? get userId; String? get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isOtpSentForPhone, isOtpSentForPhone) || other.isOtpSentForPhone == isOtpSentForPhone)&&(identical(other.isOtpSentForEmail, isOtpSentForEmail) || other.isOtpSentForEmail == isOtpSentForEmail)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isOtpSentForPhone,isOtpSentForEmail,isVerified,isLoggedIn,phoneNumber,email,userId,errorMessage);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isOtpSentForPhone: $isOtpSentForPhone, isOtpSentForEmail: $isOtpSentForEmail, isVerified: $isVerified, isLoggedIn: $isLoggedIn, phoneNumber: $phoneNumber, email: $email, userId: $userId, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, bool isOtpSentForPhone, bool isOtpSentForEmail, bool isVerified, bool isLoggedIn, String? phoneNumber, String? email, String? userId, String? errorMessage
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? isOtpSentForPhone = null,Object? isOtpSentForEmail = null,Object? isVerified = null,Object? isLoggedIn = null,Object? phoneNumber = freezed,Object? email = freezed,Object? userId = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isOtpSentForPhone: null == isOtpSentForPhone ? _self.isOtpSentForPhone : isOtpSentForPhone // ignore: cast_nullable_to_non_nullable
as bool,isOtpSentForEmail: null == isOtpSentForEmail ? _self.isOtpSentForEmail : isOtpSentForEmail // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isOtpSentForPhone,  bool isOtpSentForEmail,  bool isVerified,  bool isLoggedIn,  String? phoneNumber,  String? email,  String? userId,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isOtpSentForPhone,_that.isOtpSentForEmail,_that.isVerified,_that.isLoggedIn,_that.phoneNumber,_that.email,_that.userId,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  bool isOtpSentForPhone,  bool isOtpSentForEmail,  bool isVerified,  bool isLoggedIn,  String? phoneNumber,  String? email,  String? userId,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoading,_that.isError,_that.isOtpSentForPhone,_that.isOtpSentForEmail,_that.isVerified,_that.isLoggedIn,_that.phoneNumber,_that.email,_that.userId,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  bool isOtpSentForPhone,  bool isOtpSentForEmail,  bool isVerified,  bool isLoggedIn,  String? phoneNumber,  String? email,  String? userId,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.isOtpSentForPhone,_that.isOtpSentForEmail,_that.isVerified,_that.isLoggedIn,_that.phoneNumber,_that.email,_that.userId,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({required this.isLoading, required this.isError, required this.isOtpSentForPhone, required this.isOtpSentForEmail, required this.isVerified, required this.isLoggedIn, required this.phoneNumber, required this.email, required this.userId, this.errorMessage});
  

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isOtpSentForPhone;
@override final  bool isOtpSentForEmail;
@override final  bool isVerified;
@override final  bool isLoggedIn;
@override final  String? phoneNumber;
@override final  String? email;
@override final  String? userId;
@override final  String? errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isOtpSentForPhone, isOtpSentForPhone) || other.isOtpSentForPhone == isOtpSentForPhone)&&(identical(other.isOtpSentForEmail, isOtpSentForEmail) || other.isOtpSentForEmail == isOtpSentForEmail)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,isOtpSentForPhone,isOtpSentForEmail,isVerified,isLoggedIn,phoneNumber,email,userId,errorMessage);

@override
String toString() {
  return 'AuthState(isLoading: $isLoading, isError: $isError, isOtpSentForPhone: $isOtpSentForPhone, isOtpSentForEmail: $isOtpSentForEmail, isVerified: $isVerified, isLoggedIn: $isLoggedIn, phoneNumber: $phoneNumber, email: $email, userId: $userId, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, bool isOtpSentForPhone, bool isOtpSentForEmail, bool isVerified, bool isLoggedIn, String? phoneNumber, String? email, String? userId, String? errorMessage
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? isOtpSentForPhone = null,Object? isOtpSentForEmail = null,Object? isVerified = null,Object? isLoggedIn = null,Object? phoneNumber = freezed,Object? email = freezed,Object? userId = freezed,Object? errorMessage = freezed,}) {
  return _then(_AuthState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isOtpSentForPhone: null == isOtpSentForPhone ? _self.isOtpSentForPhone : isOtpSentForPhone // ignore: cast_nullable_to_non_nullable
as bool,isOtpSentForEmail: null == isOtpSentForEmail ? _self.isOtpSentForEmail : isOtpSentForEmail // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
