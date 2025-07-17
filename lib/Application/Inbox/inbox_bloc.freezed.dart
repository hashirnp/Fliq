// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InboxEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InboxEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboxEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InboxEvent()';
}


}

/// @nodoc
class $InboxEventCopyWith<$Res>  {
$InboxEventCopyWith(InboxEvent _, $Res Function(InboxEvent) __);
}


/// Adds pattern-matching-related methods to [InboxEvent].
extension InboxEventPatterns on InboxEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetContacts value)?  getContacts,TResult Function( _GetChatBWTwo value)?  getChatBWtwo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetContacts() when getContacts != null:
return getContacts(_that);case _GetChatBWTwo() when getChatBWtwo != null:
return getChatBWtwo(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetContacts value)  getContacts,required TResult Function( _GetChatBWTwo value)  getChatBWtwo,}){
final _that = this;
switch (_that) {
case _GetContacts():
return getContacts(_that);case _GetChatBWTwo():
return getChatBWtwo(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetContacts value)?  getContacts,TResult? Function( _GetChatBWTwo value)?  getChatBWtwo,}){
final _that = this;
switch (_that) {
case _GetContacts() when getContacts != null:
return getContacts(_that);case _GetChatBWTwo() when getChatBWtwo != null:
return getChatBWtwo(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getContacts,TResult Function( String contactId)?  getChatBWtwo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetContacts() when getContacts != null:
return getContacts();case _GetChatBWTwo() when getChatBWtwo != null:
return getChatBWtwo(_that.contactId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getContacts,required TResult Function( String contactId)  getChatBWtwo,}) {final _that = this;
switch (_that) {
case _GetContacts():
return getContacts();case _GetChatBWTwo():
return getChatBWtwo(_that.contactId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getContacts,TResult? Function( String contactId)?  getChatBWtwo,}) {final _that = this;
switch (_that) {
case _GetContacts() when getContacts != null:
return getContacts();case _GetChatBWTwo() when getChatBWtwo != null:
return getChatBWtwo(_that.contactId);case _:
  return null;

}
}

}

/// @nodoc


class _GetContacts with DiagnosticableTreeMixin implements InboxEvent {
  const _GetContacts();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InboxEvent.getContacts'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetContacts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InboxEvent.getContacts()';
}


}




/// @nodoc


class _GetChatBWTwo with DiagnosticableTreeMixin implements InboxEvent {
  const _GetChatBWTwo({required this.contactId});
  

 final  String contactId;

/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetChatBWTwoCopyWith<_GetChatBWTwo> get copyWith => __$GetChatBWTwoCopyWithImpl<_GetChatBWTwo>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InboxEvent.getChatBWtwo'))
    ..add(DiagnosticsProperty('contactId', contactId));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetChatBWTwo&&(identical(other.contactId, contactId) || other.contactId == contactId));
}


@override
int get hashCode => Object.hash(runtimeType,contactId);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InboxEvent.getChatBWtwo(contactId: $contactId)';
}


}

/// @nodoc
abstract mixin class _$GetChatBWTwoCopyWith<$Res> implements $InboxEventCopyWith<$Res> {
  factory _$GetChatBWTwoCopyWith(_GetChatBWTwo value, $Res Function(_GetChatBWTwo) _then) = __$GetChatBWTwoCopyWithImpl;
@useResult
$Res call({
 String contactId
});




}
/// @nodoc
class __$GetChatBWTwoCopyWithImpl<$Res>
    implements _$GetChatBWTwoCopyWith<$Res> {
  __$GetChatBWTwoCopyWithImpl(this._self, this._then);

  final _GetChatBWTwo _self;
  final $Res Function(_GetChatBWTwo) _then;

/// Create a copy of InboxEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contactId = null,}) {
  return _then(_GetChatBWTwo(
contactId: null == contactId ? _self.contactId : contactId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$InboxState implements DiagnosticableTreeMixin {

 List<Contact>? get contacts; List<Chat>? get chats;
/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboxStateCopyWith<InboxState> get copyWith => _$InboxStateCopyWithImpl<InboxState>(this as InboxState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InboxState'))
    ..add(DiagnosticsProperty('contacts', contacts))..add(DiagnosticsProperty('chats', chats));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboxState&&const DeepCollectionEquality().equals(other.contacts, contacts)&&const DeepCollectionEquality().equals(other.chats, chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contacts),const DeepCollectionEquality().hash(chats));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InboxState(contacts: $contacts, chats: $chats)';
}


}

/// @nodoc
abstract mixin class $InboxStateCopyWith<$Res>  {
  factory $InboxStateCopyWith(InboxState value, $Res Function(InboxState) _then) = _$InboxStateCopyWithImpl;
@useResult
$Res call({
 List<Contact>? contacts, List<Chat>? chats
});




}
/// @nodoc
class _$InboxStateCopyWithImpl<$Res>
    implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._self, this._then);

  final InboxState _self;
  final $Res Function(InboxState) _then;

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contacts = freezed,Object? chats = freezed,}) {
  return _then(_self.copyWith(
contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<Contact>?,chats: freezed == chats ? _self.chats : chats // ignore: cast_nullable_to_non_nullable
as List<Chat>?,
  ));
}

}


/// Adds pattern-matching-related methods to [InboxState].
extension InboxStatePatterns on InboxState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Initial value)  $default,){
final _that = this;
switch (_that) {
case _Initial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Initial value)?  $default,){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Contact>? contacts,  List<Chat>? chats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.contacts,_that.chats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Contact>? contacts,  List<Chat>? chats)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.contacts,_that.chats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Contact>? contacts,  List<Chat>? chats)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.contacts,_that.chats);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements InboxState {
  const _Initial({required final  List<Contact>? contacts, required final  List<Chat>? chats}): _contacts = contacts,_chats = chats;
  

 final  List<Contact>? _contacts;
@override List<Contact>? get contacts {
  final value = _contacts;
  if (value == null) return null;
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Chat>? _chats;
@override List<Chat>? get chats {
  final value = _chats;
  if (value == null) return null;
  if (_chats is EqualUnmodifiableListView) return _chats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'InboxState'))
    ..add(DiagnosticsProperty('contacts', contacts))..add(DiagnosticsProperty('chats', chats));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&const DeepCollectionEquality().equals(other._chats, _chats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contacts),const DeepCollectionEquality().hash(_chats));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'InboxState(contacts: $contacts, chats: $chats)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $InboxStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 List<Contact>? contacts, List<Chat>? chats
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of InboxState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contacts = freezed,Object? chats = freezed,}) {
  return _then(_Initial(
contacts: freezed == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<Contact>?,chats: freezed == chats ? _self._chats : chats // ignore: cast_nullable_to_non_nullable
as List<Chat>?,
  ));
}


}

// dart format on
