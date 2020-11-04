import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/MyDrawer.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('الاقسام'),
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
        body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            // start card cat 1
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'آيفون',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed("apply");
              },
            ),
            // end card cat 1
            // start card cat 2
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 5.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'سامسونج',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Navigator.of(context).pushNamed("samsung");
              },
            ),
            // end card cat 2
            // start card cat 3
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 6.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'شاومي',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Navigator.of(context).pushNamed("apply");
              },
            ),
            // end card cat 3
            // start card cat 4
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'هواوي',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Navigator.of(context).pushNamed("apply");
              },
            ),
            // end card cat 4
            // start card cat 5
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'نوكيا',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Navigator.of(context).pushNamed("apply");
              },
            ),
            // end card cat 5
            // start card cat 6
            InkWell(
              child: Card(
                // مربع يحتوي عناصر
                child: Column(
                  children: [
                    Expanded(
                      // تمدد النصر داخل البوكس الي هي فيه
                      child: Image.asset(
                        'images/Artboard – 9.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Text(
                        'سوني',
                        style: TextStyle(color: Color(int.parse("0xff13274F")), fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                // Navigator.of(context).pushNamed("apply");
              },
            ),
            // end card cat 6
          ],
        ),
      ),
    );
  }
}
