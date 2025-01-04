import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/theme_cubit.dart';
import 'package:notes_app/Cubits/theme_cubit_states.dart';
import 'package:notes_app/app_router.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeCubitStates>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode:
                state is ThemeDarkState ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData.light(), 
            darkTheme: ThemeData.dark(),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }

}