// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResultLogic on _ResultLogicBase, Store {
  final _$friendsAtom = Atom(name: '_ResultLogicBase.friends');

  @override
  List<String> get friends {
    _$friendsAtom.reportRead();
    return super.friends;
  }

  @override
  set friends(List<String> value) {
    _$friendsAtom.reportWrite(value, super.friends, () {
      super.friends = value;
    });
  }

  final _$_ResultLogicBaseActionController =
      ActionController(name: '_ResultLogicBase');

  @override
  void generateFriends(int friendsQuantity) {
    final _$actionInfo = _$_ResultLogicBaseActionController.startAction(
        name: '_ResultLogicBase.generateFriends');
    try {
      return super.generateFriends(friendsQuantity);
    } finally {
      _$_ResultLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
friends: ${friends}
    ''';
  }
}
