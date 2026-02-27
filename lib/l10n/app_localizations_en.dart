// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeTab => 'Home';

  @override
  String get libraryTab => 'Library';

  @override
  String get searchTab => 'Search';

  @override
  String get settingsTab => 'Settings';

  @override
  String get signInPage_connectToEmby => 'Connect to your Emby server';

  @override
  String get signInPage_serverAddr => 'SERVER ADDRESS';

  @override
  String get signInPage_serverAddrPlaceholder => 'Enter Server Address';

  @override
  String get signInPage_username => 'USERNAME';

  @override
  String get signInPage_usernamePlaceholder => 'Enter Username';

  @override
  String get signInPage_password => 'PASSWORD';

  @override
  String get signInPage_passwordPlaceholder => 'Enter Password';

  @override
  String get signInPage_connectToServer => 'Connect to Server';

  @override
  String get signInPage_newToEmby => 'New to Emby?';

  @override
  String get signInPage_learnMore => 'Learn more';

  @override
  String get signInPage_enterInput => 'Please enter entire information';

  @override
  String get request_timeOut => 'Request Timeout';

  @override
  String get request_unauthorized => 'Invalid user authentication information';
}
