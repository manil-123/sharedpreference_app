enum Gender { FEMALE, MALE, OTHERS }
enum ProgrammingLanguage { DART, JAVASCRIPT, KOTLIN, SWIFT }

class Settings {
  final String username;
  final Gender gender;
  final Set<ProgrammingLanguage> programmingLanguages;
  final bool isEmployed;

  Settings({
    required this.username,
    required this.gender,
    required this.programmingLanguages,
    required this.isEmployed,
  });
}
