import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(SignupInitialState());

  int selectedIndex = 0;

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
}
