import 'package:flutter/material.dart';
import '../component/MyDrawer.dart';

class About extends StatefulWidget {
  @override
  AboutState createState() => AboutState();
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('حول'),
          // عنوان الصفحة
          //backgroundColor: Colors.red, // لون الناف بار
          flexibleSpace: Image(
            // لوضع صورة خلفية للاب بار
            image: AssetImage("images/bg_home.jpg"),
            // جلب الصور من ملف اسست الخاص بي
            fit: BoxFit.cover,
          ),

          centerTitle: true,
          // لجعل العنوان بالمنتصف
          elevation: 10,
          // الشادو او الظل
          //leading: IconButton(icon: Icon(Icons.search), onPressed: (){}), // عكس الاكشن في الموقع للايقونات
          // titleSpacing: 60,  // المساحة حول العنوان بالعرض في الناف بار يمين و شمال
          brightness:
              Brightness.dark, // لون الشريط الخاص بالهاتف البطارية و الشحن
          //primary: false, // ازالة المارجن للب بار من فوق
        ),
        drawer: MyDrawer(),
        body: Container(
          child: Text('hi'),
        ),
      ),
    );
  }
}
