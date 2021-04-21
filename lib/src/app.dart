import 'package:flutter/material.dart';
import 'package:my_stock/src/config/app_route.dart';
import 'package:my_stock/src/pages/home/home_page.dart';
import 'package:my_stock/src/pages/login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/app_settings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute().route,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot){
          if(!snapshot.hasData){
            return Container(
              color: Colors.white,
            );
          }
          final token = snapshot.data.getString(AppSettings.tokenSetting) ?? '';
          if(token.isNotEmpty) {
            return HomePage();
          }
          return LoginPage();
        },
      ),
    );
  }
}