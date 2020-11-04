import 'dart:async';

// import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore: camel_case_types
class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

// ignore: camel_case_types
class _testState extends State<test> {
  Future getData() async {
    // عشان اجيب الداتا من رابط الجيسون
    var url = "https://jsonplaceholder.typicode.com/posts";
    // الصفحة الي بدي اجيب منها البيانات
    var response = await http.get(url);
    // ارسال اتش تيتي بي من نوع جيت لجلب معلومات الصفحة في الرابط
    // المعلومات الي هي الجيسون
    var responsebody = jsonDecode(response.body);
    // جيب محتوى الريسبونس
    //print(responsebody);
    // طباعة كونسول
    return responsebody;
    // طباعة في التطبيق
  }

  //
  // @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('test'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              // عشان اذا ما في بيانات ما يطلع الشاشة الحمراء الخطأ
              return ListView.builder(
                // عشان اطبع كل الي جوا الجيسون من هذا النوع
                // itemCount: 10,
                // لتحديد عدد النتائج هنا عشرة فقط
                itemCount: snapshot.data.length,
                // لجلب كل العناصر دون تحديد عدد
                itemBuilder: (context, i) {
                  return Container(
                    child: Text(snapshot.data[i]['body']),
                    // بيطبع في جوا النص
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
              // عشان يطلع لودنج حتى تطلع البيانات
            }
          },
        ),
      ),
    );
  }
}
