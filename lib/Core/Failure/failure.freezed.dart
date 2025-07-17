// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainFailure {

 String get msg;
/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainFailureCopyWith<MainFailure> get copyWith => _$MainFailureCopyWithImpl<MainFailure>(this as MainFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainFailure&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'MainFailure(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $MainFailureCopyWith<$Res>  {
  factory $MainFailureCopyWith(MainFailure value, $Res Function(MainFailure) _then) = _$MainFailureCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$MainFailureCopyWithImpl<$Res>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._self, this._then);

  final MainFailure _self;
  final $Res Function(MainFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? msg = null,}) {
  return _then(_self.copyWith(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MainFailure].
extension MainFailurePatterns on MainFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ClientMainFailure value)?  clientFailure,TResult Function( _ServerMainFailure value)?  serverFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientMainFailure() when clientFailure != null:
return clientFailure(_that);case _ServerMainFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ClientMainFailure value)  clientFailure,required TResult Function( _ServerMainFailure value)  serverFailure,}){
final _that = this;
switch (_that) {
case _ClientMainFailure():
return clientFailure(_that);case _ServerMainFailure():
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ClientMainFailure value)?  clientFailure,TResult? Function( _ServerMainFailure value)?  serverFailure,}){
final _that = this;
switch (_that) {
case _ClientMainFailure() when clientFailure != null:
return clientFailure(_that);case _ServerMainFailure() when serverFailure != null:
return serverFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String msg)?  clientFailure,TResult Function( String msg)?  serverFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientMainFailure() when clientFailure != null:
return clientFailure(_that.msg);case _ServerMainFailure() when serverFailure != null:
return serverFailure(_that.msg);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String msg)  clientFailure,required TResult Function( String msg)  serverFailure,}) {final _that = this;
switch (_that) {
case _ClientMainFailure():
return clientFailure(_that.msg);case _ServerMainFailure():
return serverFailure(_that.msg);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String msg)?  clientFailure,TResult? Function( String msg)?  serverFailure,}) {final _that = this;
switch (_that) {
case _ClientMainFailure() when clientFailure != null:
return clientFailure(_that.msg);case _ServerMainFailure() when serverFailure != null:
return serverFailure(_that.msg);case _:
  return null;

}
}

}

/// @nodoc


class _ClientMainFailure implements MainFailure {
  const _ClientMainFailure({required this.msg});
  

@override final  String msg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientMainFailureCopyWith<_ClientMainFailure> get copyWith => __$ClientMainFailureCopyWithImpl<_ClientMainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientMainFailure&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'MainFailure.clientFailure(msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$ClientMainFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$ClientMainFailureCopyWith(_ClientMainFailure value, $Res Function(_ClientMainFailure) _then) = __$ClientMainFailureCopyWithImpl;
@override @useResult
$Res call({
 String msg
});




}
/// @nodoc
class __$ClientMainFailureCopyWithImpl<$Res>
    implements _$ClientMainFailureCopyWith<$Res> {
  __$ClientMainFailureCopyWithImpl(this._self, this._then);

  final _ClientMainFailure _self;
  final $Res Function(_ClientMainFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(_ClientMainFailure(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ServerMainFailure implements MainFailure {
  const _ServerMainFailure({required this.msg});
  

@override final  String msg;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerMainFailureCopyWith<_ServerMainFailure> get copyWith => __$ServerMainFailureCopyWithImpl<_ServerMainFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerMainFailure&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'MainFailure.serverFailure(msg: $msg)';
}


}

/// @nodoc
abstract mixin class _$ServerMainFailureCopyWith<$Res> implements $MainFailureCopyWith<$Res> {
  factory _$ServerMainFailureCopyWith(_ServerMainFailure value, $Res Function(_ServerMainFailure) _then) = __$ServerMainFailureCopyWithImpl;
@override @useResult
$Res call({
 String msg
});




}
/// @nodoc
class __$ServerMainFailureCopyWithImpl<$Res>
    implements _$ServerMainFailureCopyWith<$Res> {
  __$ServerMainFailureCopyWithImpl(this._self, this._then);

  final _ServerMainFailure _self;
  final $Res Function(_ServerMainFailure) _then;

/// Create a copy of MainFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(_ServerMainFailure(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
