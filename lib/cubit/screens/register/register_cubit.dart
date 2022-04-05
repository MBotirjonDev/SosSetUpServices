import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/register/register_state.dart';
import 'package:sossetupservice/services/sign_up_reg.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final HttpRepositorySignUpReg userSignUp;
  RegisterCubit(this.userSignUp) : super(RegisterInitial()) {
    postUsers();
  }
}

Future<void> postUsers() async {
  try {
    
  } catch (e) {
    
  }
}
