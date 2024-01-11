import 'package:mobx/mobx.dart';
// part 'home_state.g.dart';


class HomeState = _HomeState with _$HomeState;

abstract class _HomeState with Store {
  @observable
  bool _showPassword = true;

  @computed
  bool get showPassword => _showPassword;

  @action
  void changeShowPassword() {
    _showPassword = !_showPassword;
  }

  @action
  void resetState() {
    _showPassword = true;
  }
}
