import 'package:mobx/mobx.dart';

part 'my_drawer.store.g.dart';

class MyDrawerStore = MyDrawerStoreBase with _$MyDrawerStore;

abstract class MyDrawerStoreBase with Store {
  @observable
  int selectedMenu = 1;

  @action
  void setSelectedMenu(int menu) => selectedMenu = menu;
}
