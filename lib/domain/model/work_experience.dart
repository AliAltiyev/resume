final class WorkExperience {
  final String dateFrom;
  final String dateUntil;
  final String position;
  final String description;
  final String logo;
  final String organizationName;
  final String month;

  WorkExperience({
    required this.dateFrom,
    required this.dateUntil,
    required this.position,
    required this.description,
    required this.logo,
    required this.organizationName,
    required this.month,
  });

  static List<WorkExperience> workExperience() {
    return [
      WorkExperience(
          dateFrom: 'September 2021',
          dateUntil: 'July 2022',
          position: "Android Developer",
          description: 'Android development trainee',
          logo: 'assets/teach_me_skills.png',
          organizationName: 'TeachMeSkills',
          month: '10 months'),
      WorkExperience(
          dateFrom: 'February 2021',
          dateUntil: 'September 2022',
          position: "Flutter Developer",
          description:
              """ Flutter Dart Dio Http Websocket Swagger Firebase Clean Architecture with modular application MVVM MVC Bloc/Provider Room/Hive/Isar Dependency injection TDD""",
          logo: 'assets/innowise.png',
          organizationName: 'Innowise Group',
          month: '8 months'),
      WorkExperience(
          dateFrom: 'December 2023',
          dateUntil: 'April 2024',
          position: "Flutter Developer",
          description:
              'Development and support of mobile applications using Flutter.Working with Dart, GraphQL and YandexMap.Collaboration with the development team.',
          logo: 'assets/br.png',
          organizationName: 'Development App Broseph',
          month: '4 months'),
      WorkExperience(
          dateFrom: 'April 2024',
          dateUntil: 'Now',
          position: "Flutter Developer",
          description: 'Development:IOS, Android, Web, TV.',
          logo: 'assets/fasto.png',
          organizationName: 'FastoGT',
          month: '7 months')
    ];
  }
}
