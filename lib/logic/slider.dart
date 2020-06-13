import 'package:mobx/mobx.dart';
part 'slider.g.dart';

class SliderLogic = _SliderLogicBase with _$SliderLogic;

abstract class _SliderLogicBase with Store {
  @observable
  double _friends = 0;

  @computed
  double get friendsGet => _friends;

  @action
  void changeFriends(double newFriends) {
    _friends = newFriends;
  }
}
