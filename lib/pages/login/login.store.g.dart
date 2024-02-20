// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on LoginStoreBase, Store {
  late final _$isFacebookLoadingAtom =
      Atom(name: 'LoginStoreBase.isFacebookLoading', context: context);

  @override
  bool get isFacebookLoading {
    _$isFacebookLoadingAtom.reportRead();
    return super.isFacebookLoading;
  }

  @override
  set isFacebookLoading(bool value) {
    _$isFacebookLoadingAtom.reportWrite(value, super.isFacebookLoading, () {
      super.isFacebookLoading = value;
    });
  }

  late final _$isGoogleLoadingAtom =
      Atom(name: 'LoginStoreBase.isGoogleLoading', context: context);

  @override
  bool get isGoogleLoading {
    _$isGoogleLoadingAtom.reportRead();
    return super.isGoogleLoading;
  }

  @override
  set isGoogleLoading(bool value) {
    _$isGoogleLoadingAtom.reportWrite(value, super.isGoogleLoading, () {
      super.isGoogleLoading = value;
    });
  }

  late final _$signInWithGoogleAsyncAction =
      AsyncAction('LoginStoreBase.signInWithGoogle', context: context);

  @override
  Future<UserCredential> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  late final _$signInWithFacebookAsyncAction =
      AsyncAction('LoginStoreBase.signInWithFacebook', context: context);

  @override
  Future<UserCredential> signInWithFacebook() {
    return _$signInWithFacebookAsyncAction
        .run(() => super.signInWithFacebook());
  }

  @override
  String toString() {
    return '''
isFacebookLoading: ${isFacebookLoading},
isGoogleLoading: ${isGoogleLoading}
    ''';
  }
}
