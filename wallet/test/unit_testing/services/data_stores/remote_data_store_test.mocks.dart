// Mocks generated by Mockito 5.3.2 from annotations
// in pylons_wallet/test/unit_testing/services/data_stores/remote_data_store_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:firebase_app_check/firebase_app_check.dart' as _i3;
import 'package:firebase_core/firebase_core.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeFirebaseApp_0 extends _i1.SmartFake implements _i2.FirebaseApp {
  _FakeFirebaseApp_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FirebaseAppCheck].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseAppCheck extends _i1.Mock implements _i3.FirebaseAppCheck {
  MockFirebaseAppCheck() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_0(
          this,
          Invocation.getter(#app),
        ),
      ) as _i2.FirebaseApp);
  @override
  set app(_i2.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Stream<String?> get onTokenChange => (super.noSuchMethod(
        Invocation.getter(#onTokenChange),
        returnValue: _i4.Stream<String?>.empty(),
      ) as _i4.Stream<String?>);
  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);
  @override
  _i4.Future<void> activate({
    String? webRecaptchaSiteKey,
    bool? androidDebugProvider = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #activate,
          [],
          {
            #webRecaptchaSiteKey: webRecaptchaSiteKey,
            #androidDebugProvider: androidDebugProvider,
          },
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<String?> getToken([bool? forceRefresh]) => (super.noSuchMethod(
        Invocation.method(
          #getToken,
          [forceRefresh],
        ),
        returnValue: _i4.Future<String?>.value(),
      ) as _i4.Future<String?>);
  @override
  _i4.Future<void> setTokenAutoRefreshEnabled(
          bool? isTokenAutoRefreshEnabled) =>
      (super.noSuchMethod(
        Invocation.method(
          #setTokenAutoRefreshEnabled,
          [isTokenAutoRefreshEnabled],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}