import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:natterberry/login/login.dart';

class LoginPage extends StatelessWidget {
  final UserType userType;

  // In the constructor, require a Todo.
  LoginPage({Key? key, required this.userType}) : super(key: key);

  // static Route route() {
  //   return MaterialPageRoute<void>(
  //       builder: (_) => LoginPage(key, userType: userType));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: userType.userType == 'V'
              ? Text("Volunteer Login")
              : Text("Student Login")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
          child: LoginForm(),
        ),
      ),
    );
  }
}
