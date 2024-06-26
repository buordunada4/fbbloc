part of 'sign_up_bloc_bloc.dart';

sealed class SignUpBlocEvent extends Equatable {
  const SignUpBlocEvent();

  @override
  List<Object> get props => [];
}

class SignUpRequired extends SignUpBlocEvent {
  final MyUser user;
  final String password;

  const SignUpRequired(this.password, this.user);
}
