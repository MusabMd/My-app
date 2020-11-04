import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../component/MobiList.dart';

class Apply extends StatefulWidget {
  @override
  _ApplyState createState() => _ApplyState();
}

class _ApplyState extends State<Apply> {
  Future getData() async {
    var url = "http://192.168.1.187/mobtech/index.php";
    //192.168.1.3 home
    //192.168.1.187 ahmad
    // ip my mac
    //10.0.2.2
    //ip default
    // var response = await http.get(url);
    var data = {"cat": "1"};
    var response = await http.post(url, body: data);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('آيفون'),
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
          body: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) {
                    return MobiList(
                      name: snapshot.data[i]['mob_Name'],
                      ram: snapshot.data[i]['mob_Ram'],
                      color1: snapshot.data[i]['mob_Color'],
                      color2: snapshot.data[i]['mob_Color2'],
                      price: snapshot.data[i]['mob_Price'],
                    );
                  },
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ));
  }
}
