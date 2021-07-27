import 'package:get/route_manager.dart';
import 'package:novo/app/routes/app_routes.dart';
import 'package:novo/app/ui/audio_page.dart';
import 'package:novo/app/ui/home_page.dart';
import 'package:novo/app/ui/initial_page.dart';
import 'package:novo/app/ui/login_page.dart';
import 'package:novo/app/ui/photo_page.dart';
import 'package:novo/app/ui/signin_page.dart';
import 'package:novo/app/ui/social_page.dart';
import 'package:novo/app/ui/text_page.dart';

class AppPages{
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialPage(),),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(),),
    GetPage(name: Routes.HOME, page: () => HomePage(),),
    GetPage(name: Routes.SIGNIN, page: () => SigninPage(),),
    GetPage(name: Routes.TEXT, page: () => TextPage()),
    GetPage(name: Routes.PHOTO, page: () => PhotoPage()),
    GetPage(name: Routes.SOCIAL, page: () => SocialPage()),
    GetPage(name: Routes.AUDIO, page: () => AudioPage()),

  ];
}