import 'package:fbbloc/app_view.dart';
import 'package:fbbloc/blocs/authentification_bloc/authentification_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  final UserRepository userRepository;
  const MyApp(this.userRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<AuthentificationBlocBloc>(
      create: (context) =>
          AuthentificationBlocBloc(userRepository: userRepository),
      child: const MyAppView(),
    );
  }
}