// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseViewModel on BaseViewModelBase, Store {
  late final _$currentPageAtom =
      Atom(name: 'BaseViewModelBase.currentPage', context: context);

  @override
  int get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(int value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$BaseViewModelBaseActionController =
      ActionController(name: 'BaseViewModelBase', context: context);

  @override
  void changePage(int index) {
    final _$actionInfo = _$BaseViewModelBaseActionController.startAction(
        name: 'BaseViewModelBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$BaseViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage}
    ''';
  }
}
