import 'package:flutter/foundation.dart';
import 'package:sossetupservice/models/auth_controller/auth_post_model.dart';

abstract class RegisterState {
  const RegisterState();
}

class RegisterInitial extends RegisterState {
   RegisterInitial();
}

class RegisterLoading extends RegisterState {
   RegisterLoading();
}

class RegisterCompleted extends RegisterState {
  List<AuthModel> response;
   RegisterCompleted(this.response);
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RegisterCompleted && listEquals(o.response, response);
  }

  @override
  int get hashCode => response.hashCode;
}

class RegisterError extends RegisterState {
  String error;
  RegisterError(this.error);
}
