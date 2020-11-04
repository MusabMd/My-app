import 'package:flutter/material.dart';
import 'package:test_project/pages/apply.dart';
import './pages/home.dart'; //  استدعاء صفحة
import './pages/category.dart';
import './pages/About.dart';
import './pages/apply.dart';
// import './pages/DetailsPage.dart';
// import './pages/test.dart';

void main() {
  runApp(MyApp());
}

// root of application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // الغاء الشريط في زاوية الشاشة
        title: 'app one',
        theme: ThemeData(fontFamily: 'Almarai'),
        // فونت للتطبيق كامل
        // اذا بدك عربي استخدم دايركشن اذا لا استخدم سكافولد بس
        home: Home(),
        // Home(),test(),
        // اسم الكلاس الي في اعدادات الصفحة
        routes: {
          'Category': (context) {
            return Category();
          },
          'About': (context) {
            return About();
          },
          'Home': (context) {
            return Home();
          },
          'apply': (context) {
            return Apply();
          },
          // 'DetailsPage': (context) {
          //   return DetailsPage();
          // },
        });
  }
}
