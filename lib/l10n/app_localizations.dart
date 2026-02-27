import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @homeTab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTab;

  /// No description provided for @libraryTab.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get libraryTab;

  /// No description provided for @searchTab.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchTab;

  /// No description provided for @settingsTab.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTab;

  /// No description provided for @signInPage_connectToEmby.
  ///
  /// In en, this message translates to:
  /// **'Connect to your Emby server'**
  String get signInPage_connectToEmby;

  /// No description provided for @signInPage_serverAddr.
  ///
  /// In en, this message translates to:
  /// **'SERVER ADDRESS'**
  String get signInPage_serverAddr;

  /// No description provided for @signInPage_serverAddrPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter Server Address'**
  String get signInPage_serverAddrPlaceholder;

  /// No description provided for @signInPage_username.
  ///
  /// In en, this message translates to:
  /// **'USERNAME'**
  String get signInPage_username;

  /// No description provided for @signInPage_usernamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter Username'**
  String get signInPage_usernamePlaceholder;

  /// No description provided for @signInPage_password.
  ///
  /// In en, this message translates to:
  /// **'PASSWORD'**
  String get signInPage_password;

  /// No description provided for @signInPage_passwordPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get signInPage_passwordPlaceholder;

  /// No description provided for @signInPage_connectToServer.
  ///
  /// In en, this message translates to:
  /// **'Connect to Server'**
  String get signInPage_connectToServer;

  /// No description provided for @signInPage_newToEmby.
  ///
  /// In en, this message translates to:
  /// **'New to Emby?'**
  String get signInPage_newToEmby;

  /// No description provided for @signInPage_learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get signInPage_learnMore;

  /// No description provided for @signInPage_enterInput.
  ///
  /// In en, this message translates to:
  /// **'Please enter entire information'**
  String get signInPage_enterInput;

  /// No description provided for @request_timeOut.
  ///
  /// In en, this message translates to:
  /// **'Request Timeout'**
  String get request_timeOut;

  /// No description provided for @request_unauthorized.
  ///
  /// In en, this message translates to:
  /// **'Invalid user authentication information'**
  String get request_unauthorized;

  /// No description provided for @request_libraryError.
  ///
  /// In en, this message translates to:
  /// **'Request Library Failed'**
  String get request_libraryError;

  /// No description provided for @homePage_latestMedia.
  ///
  /// In en, this message translates to:
  /// **'Latest Media'**
  String get homePage_latestMedia;

  /// No description provided for @homePage_browserAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get homePage_browserAll;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
