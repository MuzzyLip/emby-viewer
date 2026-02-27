// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get homeTab => '首页';

  @override
  String get libraryTab => '媒体库';

  @override
  String get searchTab => '搜索';

  @override
  String get settingsTab => '设置';

  @override
  String get signInPage_connectToEmby => '连接到你的Emby服务';

  @override
  String get signInPage_serverAddr => '服务地址';

  @override
  String get signInPage_serverAddrPlaceholder => '请输入服务地址';

  @override
  String get signInPage_username => '用户名';

  @override
  String get signInPage_usernamePlaceholder => '请输入用户名';

  @override
  String get signInPage_password => '密码';

  @override
  String get signInPage_passwordPlaceholder => '请输入密码';

  @override
  String get signInPage_connectToServer => '连接到服务';

  @override
  String get signInPage_newToEmby => '不熟悉Emby？';

  @override
  String get signInPage_learnMore => '了解更多';

  @override
  String get signInPage_enterInput => '请输入完整信息';

  @override
  String get request_timeOut => '请求超时';

  @override
  String get request_unauthorized => '用户认证信息错误';

  @override
  String get request_libraryError => '请求媒体库失败';

  @override
  String get homePage_latestMedia => '最新媒体库';

  @override
  String get homePage_browserAll => '查看全部';
}
