import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/screen1.dart';
import '../screens/splash_screen.dart';
import '../shopping_cubit.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MultiBlocProvider(
          providers: [
            BlocProvider(create: (BuildContext context) => ShoppingCubit()),
          ],
          child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          )
      );
  }

}