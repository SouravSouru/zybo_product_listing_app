import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zybo_machine_test/data/models/login_model/login_model.dart';
import 'package:zybo_machine_test/bloc/auth/bloc%20logic/verify_phonnumber.dart';
import 'package:zybo_machine_test/bloc/auth/bloc%20logic/verify_otp.dart';

import '../../data/models/result/result.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<VerifyPhonenumber>(verifyPhonenumber);
     on<VerifyOtp>(verifyOtp);
  }
}
