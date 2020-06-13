import 'package:mobx/mobx.dart';
part 'result.g.dart';

class ResultLogic = _ResultLogicBase with _$ResultLogic;

abstract class _ResultLogicBase with Store {
  @observable
  List<String> friends = [];

  @action
  void generateFriends(int friendsQuantity) {
    friends.clear();

    for (int i = 0; i < friendsQuantity; i++) {
      friends.add('Friend ${i + 1}');
    }
  }
}
