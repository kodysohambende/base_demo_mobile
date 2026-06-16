// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_stack_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NavigationStackItem implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NavigationStackItem'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationStackItem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NavigationStackItem()';
}


}

/// @nodoc
class $NavigationStackItemCopyWith<$Res>  {
$NavigationStackItemCopyWith(NavigationStackItem _, $Res Function(NavigationStackItem) __);
}


/// Adds pattern-matching-related methods to [NavigationStackItem].
extension NavigationStackItemPatterns on NavigationStackItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NavigationStackItemSplashPage value)?  splash,TResult Function( NavigationStackItemError value)?  error,TResult Function( NavigationStackItemHomePage value)?  home,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NavigationStackItemSplashPage() when splash != null:
return splash(_that);case NavigationStackItemError() when error != null:
return error(_that);case NavigationStackItemHomePage() when home != null:
return home(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NavigationStackItemSplashPage value)  splash,required TResult Function( NavigationStackItemError value)  error,required TResult Function( NavigationStackItemHomePage value)  home,}){
final _that = this;
switch (_that) {
case NavigationStackItemSplashPage():
return splash(_that);case NavigationStackItemError():
return error(_that);case NavigationStackItemHomePage():
return home(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NavigationStackItemSplashPage value)?  splash,TResult? Function( NavigationStackItemError value)?  error,TResult? Function( NavigationStackItemHomePage value)?  home,}){
final _that = this;
switch (_that) {
case NavigationStackItemSplashPage() when splash != null:
return splash(_that);case NavigationStackItemError() when error != null:
return error(_that);case NavigationStackItemHomePage() when home != null:
return home(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  splash,TResult Function( String? key,  ErrorType? errorType)?  error,TResult Function()?  home,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NavigationStackItemSplashPage() when splash != null:
return splash();case NavigationStackItemError() when error != null:
return error(_that.key,_that.errorType);case NavigationStackItemHomePage() when home != null:
return home();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  splash,required TResult Function( String? key,  ErrorType? errorType)  error,required TResult Function()  home,}) {final _that = this;
switch (_that) {
case NavigationStackItemSplashPage():
return splash();case NavigationStackItemError():
return error(_that.key,_that.errorType);case NavigationStackItemHomePage():
return home();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  splash,TResult? Function( String? key,  ErrorType? errorType)?  error,TResult? Function()?  home,}) {final _that = this;
switch (_that) {
case NavigationStackItemSplashPage() when splash != null:
return splash();case NavigationStackItemError() when error != null:
return error(_that.key,_that.errorType);case NavigationStackItemHomePage() when home != null:
return home();case _:
  return null;

}
}

}

/// @nodoc


class NavigationStackItemSplashPage with DiagnosticableTreeMixin implements NavigationStackItem {
  const NavigationStackItemSplashPage();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NavigationStackItem.splash'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationStackItemSplashPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NavigationStackItem.splash()';
}


}




/// @nodoc


class NavigationStackItemError with DiagnosticableTreeMixin implements NavigationStackItem {
  const NavigationStackItemError({this.key, this.errorType});
  

 final  String? key;
 final  ErrorType? errorType;

/// Create a copy of NavigationStackItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NavigationStackItemErrorCopyWith<NavigationStackItemError> get copyWith => _$NavigationStackItemErrorCopyWithImpl<NavigationStackItemError>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NavigationStackItem.error'))
    ..add(DiagnosticsProperty('key', key))..add(DiagnosticsProperty('errorType', errorType));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationStackItemError&&(identical(other.key, key) || other.key == key)&&(identical(other.errorType, errorType) || other.errorType == errorType));
}


@override
int get hashCode => Object.hash(runtimeType,key,errorType);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NavigationStackItem.error(key: $key, errorType: $errorType)';
}


}

/// @nodoc
abstract mixin class $NavigationStackItemErrorCopyWith<$Res> implements $NavigationStackItemCopyWith<$Res> {
  factory $NavigationStackItemErrorCopyWith(NavigationStackItemError value, $Res Function(NavigationStackItemError) _then) = _$NavigationStackItemErrorCopyWithImpl;
@useResult
$Res call({
 String? key, ErrorType? errorType
});




}
/// @nodoc
class _$NavigationStackItemErrorCopyWithImpl<$Res>
    implements $NavigationStackItemErrorCopyWith<$Res> {
  _$NavigationStackItemErrorCopyWithImpl(this._self, this._then);

  final NavigationStackItemError _self;
  final $Res Function(NavigationStackItemError) _then;

/// Create a copy of NavigationStackItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? errorType = freezed,}) {
  return _then(NavigationStackItemError(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,errorType: freezed == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as ErrorType?,
  ));
}


}

/// @nodoc


class NavigationStackItemHomePage with DiagnosticableTreeMixin implements NavigationStackItem {
  const NavigationStackItemHomePage();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'NavigationStackItem.home'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NavigationStackItemHomePage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'NavigationStackItem.home()';
}


}




// dart format on
