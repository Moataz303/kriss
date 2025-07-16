import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/models/one_item_model.dart';
import '../../../../home/presentation/views/widgets/cart_items_list.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(SignupInitialState());

  int selectedIndex = 0;
  String? selectedFilterOption;

  static AuthCubit get(context) => BlocProvider.of(context);

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
    ItemModel currentQtyItem = cartItems.where((item) => item.itemCode == itemId).first;
    currentQtyItem.qty = currentQtyItem.qty! + 1;
    emit(IncrementQuantityState());
  }

  void decrement(int itemId) {
    ItemModel currentQtyItem = cartItems.where((item) => item.itemCode == itemId).first;
    if (currentQtyItem.qty! > 0) {
      currentQtyItem.qty = currentQtyItem.qty! - 1;
      emit(DecrementQuantityState());
    }
  }


  void changeTime() {
    emit(ChangeTimeState());
  }

  void cartItemsCount () {
    emit(CartItemsCountState());
  }

}
