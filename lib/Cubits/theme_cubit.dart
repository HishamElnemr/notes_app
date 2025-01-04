import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/theme_cubit_states.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeCubitStates> {
  ThemeCubit() : super(ThemeLightState()) {
    _loadTheme();
  }
  void toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();

    if (state is ThemeLightState) {
      emit(ThemeDarkState());
      prefs.setBool('isDark', true);
    } else {
      emit(ThemeLightState());
      prefs.setBool('isDark', false);
    }
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    if (isDark) {
      emit(ThemeDarkState());
    } else {
      emit(ThemeLightState());
    }
  }
}
