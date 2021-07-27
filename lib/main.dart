import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:novo/app/routes/app_pages.dart';
import 'package:novo/app/routes/app_routes.dart';
import 'package:novo/app/ui/theme/app_theme.dart';

import 'app/data/model/user_sheets_api.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSheetsApi.init();

  runApp(
    GetMaterialApp(
      title: 'DocVida 2021',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
      theme: appThemeData,
    )
  );
}

