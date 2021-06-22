import 'package:flutter/material.dart';
import 'package:sharedpreferences_app/models/model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _userNameController = TextEditingController();
  var _selectedGender = Gender.FEMALE;
  var _selectedLanguage = Set<ProgrammingLanguage>();
  var _isEmployed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: _userNameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
          ),
          RadioListTile(
            title: Text('Female'),
            value: Gender.FEMALE,
            groupValue: _selectedGender,
            onChanged: (newValue) =>
                setState(() => _selectedGender = newValue as Gender),
          ),
          RadioListTile(
            title: Text('Male'),
            value: Gender.MALE,
            groupValue: _selectedGender,
            onChanged: (newValue) =>
                setState(() => _selectedGender = newValue as Gender),
          ),
          RadioListTile(
            title: Text('Others'),
            value: Gender.OTHERS,
            groupValue: _selectedGender,
            onChanged: (newValue) =>
                setState(() => _selectedGender = newValue as Gender),
          ),
          CheckboxListTile(
            title: Text('Dart'),
            value: _selectedLanguage.contains(ProgrammingLanguage.DART),
            onChanged: (_) {
              setState(() {
                _selectedLanguage.contains(ProgrammingLanguage.DART)
                    ? _selectedLanguage.remove(ProgrammingLanguage.DART)
                    : _selectedLanguage.add(ProgrammingLanguage.DART);
              });
            },
          ),
          CheckboxListTile(
            title: Text('JavaScript'),
            value: _selectedLanguage.contains(ProgrammingLanguage.JAVASCRIPT),
            onChanged: (_) {
              setState(() {
                _selectedLanguage.contains(ProgrammingLanguage.JAVASCRIPT)
                    ? _selectedLanguage.remove(ProgrammingLanguage.JAVASCRIPT)
                    : _selectedLanguage.add(ProgrammingLanguage.JAVASCRIPT);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Kotlin'),
            value: _selectedLanguage.contains(ProgrammingLanguage.KOTLIN),
            onChanged: (_) {
              setState(() {
                _selectedLanguage.contains(ProgrammingLanguage.KOTLIN)
                    ? _selectedLanguage.remove(ProgrammingLanguage.KOTLIN)
                    : _selectedLanguage.add(ProgrammingLanguage.KOTLIN);
              });
            },
          ),
          CheckboxListTile(
            title: Text('Swift'),
            value: _selectedLanguage.contains(ProgrammingLanguage.SWIFT),
            onChanged: (_) {
              setState(() {
                _selectedLanguage.contains(ProgrammingLanguage.SWIFT)
                    ? _selectedLanguage.remove(ProgrammingLanguage.SWIFT)
                    : _selectedLanguage.add(ProgrammingLanguage.SWIFT);
              });
            },
          ),
          SwitchListTile(
            title: Text('Is Employed'),
            value: _isEmployed,
            onChanged: (newValue) {
              setState(() => _isEmployed = newValue);
            },
          ),
          TextButton(
            child: Text('Save Settings'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
