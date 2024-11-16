enum SkillsLevel { beginner, middle, advanced }

final class Skills {
  final String name;
  final SkillsLevel skillsLevel;

  Skills({required this.name, required this.skillsLevel});

  static List<Skills> skills() {
    return [
      Skills(name: 'Dart', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Flutter', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Bloc', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Provider', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'MobX', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Dependency Injection', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Firebase', skillsLevel: SkillsLevel.middle),
      Skills(name: 'Hive', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Dio/Http', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'MobX', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Stripe/Paypal', skillsLevel: SkillsLevel.advanced),
      Skills(
          name: 'Google Maps/Yandex Maps', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'Clean Architecture', skillsLevel: SkillsLevel.advanced),
      Skills(name: 'CI/CD', skillsLevel: SkillsLevel.beginner),
    ];
  }
}
