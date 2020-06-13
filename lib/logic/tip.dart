import 'package:mobx/mobx.dart';
part 'tip.g.dart';

class TipLogic = _TipLogicBase with _$TipLogic;

abstract class _TipLogicBase with Store {
  @observable
  int _tip = 0;

  @computed
  int get tipGet => _tip;

  @action
  void changeState(tip) {
    _tip = tip;
  }
}
