// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CommentsViewModel on _CommentsViewModelBase, Store {
  final _$itemsAtom = Atom(name: '_CommentsViewModelBase.items');

  @override
  List<CommentsModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<CommentsModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$fetchItemsAsyncAction =
      AsyncAction('_CommentsViewModelBase.fetchItems');

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
