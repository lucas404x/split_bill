// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tip.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TipLogic on _TipLogicBase, Store {
  Computed<int> _$tipGetComputed;

  @override
  int get tipGet => (_$tipGetComputed ??=
          Computed<int>(() => super.tipGet, name: '_TipLogicBase.tipGet'))
      .value;

  final _$_tipAtom = Atom(name: '_TipLogicBase._tip');

  @override
  int get _tip {
    _$_tipAtom.reportRead();
    return super._tip;
  }

  @override
  set _tip(int value) {
    _$_tipAtom.reportWrite(value, super._tip, () {
      super._tip = value;
    });
  }

  final _$_TipLogicBaseActionController =
      ActionController(name: '_TipLogicBase');

  @override
  void changeState(dynamic tip) {
    final _$actionInfo = _$_TipLogicBaseActionController.startAction(
        name: '_TipLogicBase.changeState');
    try {
      return super.changeState(tip);
    } finally {
      _$_TipLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tipGet: ${tipGet}
    ''';
  }
}
