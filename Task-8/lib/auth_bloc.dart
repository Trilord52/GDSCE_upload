import 'package:flutter_bloc/flutter_bloc.dart';

// Events for Authentication
abstract class AuthEvent {}

class TogglePasswordVisibility extends AuthEvent {}

class UpdateEmail extends AuthEvent {
  final String email;
  UpdateEmail(this.email);
}

class UpdatePassword extends AuthEvent {
  final String password;
  UpdatePassword(this.password);
}

// State for Authentication
class AuthState {
  final bool isPasswordVisible;
  final String email;
  final String password;

  AuthState({this.isPasswordVisible = false, this.email = '', this.password = ''});

  AuthState copyWith({bool? isPasswordVisible, String? email, String? password}) {
    return AuthState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

// BLoC Implementation
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
    });

    on<UpdateEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<UpdatePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }
}
