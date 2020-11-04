//import 'dart:html';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final name;

  final ram;

  final color1;

  final color2;

  final price;

  DetailsPage({this.name, this.ram, this.color1, this.color2, this.price});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
          // عنوان الصفحة
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
        body: ListView(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: GridTile(
                child: Image.asset(
                  'images/phone/01.png',
                  fit: BoxFit.cover,
                ),
                footer: Container(
                  height: 50,
                  color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              widget.name,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          // نفس الكونتينر بس بقبل بادنج
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "jd ${widget.price}",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // end container images
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'المواصفات',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(int.parse("0xff13274F")),
                ),
              ),
            ),
            // end title description container
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mySpec(context, "الخاصية", widget.name, Colors.blue,
                      Colors.white),
                  mySpec(context, "الخاصية", widget.ram, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.ram, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.color1, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.color2, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.ram, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.ram, Colors.white,
                      Colors.blue),
                  mySpec(context, "الخاصية", widget.price, Colors.white,
                      Colors.blue),
                ],
              ),
            ),
            // end container description
          ],
        ),
      ),
    );
  }

  mySpec(context, String feature, String details, Color colorbackground,
      Color colortext) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      color: colorbackground,
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
          children: [
            TextSpan(text: feature),
            TextSpan(
              text: details,
              style: TextStyle(color: colortext),
            ),
          ],
        ),
      ),
    );
  }
}
