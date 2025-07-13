import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(SignupInitialState());

  int selectedIndex = 0;
  String? selectedFilterOption;

  static AuthCubit get(context) => BlocProvider.of(context);

  final Map<int, int> _quantities = {};

  void changePasswordVisibility() {
    emit(ChangePasswordVisibilityState());
  }

  void changeCheckBox() {
    emit(ChangeCheckBoxState());
  }

  void changeNavigationBar(int index) {
    selectedIndex = index;
    emit(ChangeNavigationBarState());
  }

  void filterBottom(String? value) {
    selectedFilterOption = value;
    emit(FilterBottomState());
  }

  void increment(int itemId) {
    final currentQty = _quantities[itemId] ?? 0;
    _quantities[itemId] = currentQty + 1;
    emit(IncrementQuantityState());
  }

  void decrement(int itemId) {
    final currentQty = _quantities[itemId] ?? 0;
    if (currentQty > 0) {
      _quantities[itemId] = currentQty - 1;
      emit(DecrementQuantityState());
    }
  }

  int getQuantity(int itemId) => _quantities[itemId] ?? 0;
}
