class Constants {
  static Constants? _instance;
  Constants._();
  static Constants get instance => _instance ??= Constants._();
  //Tab name
  static String home = 'Home';
  static String about = 'About';
  static String skills = 'Skills';
  static String constacts = 'Contacts';
}
