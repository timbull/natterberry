import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:natterberry/app.dart';
//import 'package:user_repository/user_repository.dart' as UserRepository;
//import 'package:natterberry/packages/user_repository/user_repository.dart';
import 'package:natterberry/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  EquatableConfig.stringify = kDebugMode;
  Bloc.observer = SimpleBlocObserver();
  // Should initiate the singleton user
  //UserRepository.User(id: '', authenticated: false, role: '', displayName: '');
  runApp(App(authenticationRepository: AuthenticationRepository()));
}
