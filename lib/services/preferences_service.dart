import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences_app/models/model.dart';

class PreferencesService {
  saveSettings(Settings settings) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('username', settings.username);
    await preferences.setBool('isEmployed', settings.isEmployed);
    await preferences.setInt('gender', settings.gender.index);
    await preferences.setStringList(
        'programmingLanguages',
        settings.programmingLanguages
            .map((lang) => lang.index.toString())
            .toList());
    print('Saved Settings');
  }

  Future<Settings> getSettings() async {
    final preferences = await SharedPreferences.getInstance();
    final username = preferences.getString('username');
    final isEmployed = preferences.getBool('isEmployed');
    final gender = Gender.values[preferences.getInt('gender') ?? 0];
    final programmingLanguagesIndices =
        preferences.getStringList('programmingLanguages');
    final programmingLanguages = programmingLanguagesIndices
        .map(
            (stringIndex) => ProgrammingLanguage.values[int.parse(stringIndex)])
        .toSet();
    return Settings(
        username: username,
        gender: gender,
        programmingLanguages: programmingLanguages,
        isEmployed: isEmployed);
  }
}
