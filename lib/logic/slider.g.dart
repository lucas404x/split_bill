// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SliderLogic on _SliderLogicBase, Store {
  Computed<double> _$friendsGetComputed;

  @override
  double get friendsGet =>
      (_$friendsGetComputed ??= Computed<double>(() => super.friendsGet,
              name: '_SliderLogicBase.friendsGet'))
          .value;

  final _$_friendsAtom = Atom(name: '_SliderLogicBase._friends');

  @override
  double get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(double value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  final _$_SliderLogicBaseActionController =
      ActionController(name: '_SliderLogicBase');

  @override
  void changeFriends(double newFriends) {
    final _$actionInfo = _$_SliderLogicBaseActionController.startAction(
        name: '_SliderLogicBase.changeFriends');
    try {
      return super.changeFriends(newFriends);
    } finally {
      _$_SliderLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
friendsGet: ${friendsGet}
    ''';
  }
}
