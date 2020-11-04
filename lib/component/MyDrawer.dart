import 'package:flutter/material.dart';

// class drawer
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        //حتى تحط اكثر من نص لست فيو عشان فيها سكرول للعناصر
        children: [
          UserAccountsDrawerHeader(
            // لاظهار معلومات المستخدم في حال تجيل الدخول في القائمة
            accountName: Text(
              "Mus'ab",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "Mus'ab@gmail,com",
              style: TextStyle(color: Colors.white),
            ),
            currentAccountPicture: CircleAvatar(
              child: new IconTheme(
                // لتغيير لون الايقونة
                data: new IconThemeData(
                  color: Color(int.parse("0xff0A2634")),
                  // اضافة لون مخصص
                  // 0xff + hex-code
                ),
                child: new Icon(Icons.person), // الايقونة
              ),
              backgroundColor:
                  Color(int.parse("0xffE5B764")), // لون خافية الايقونة الدائري
            ),
            decoration: BoxDecoration(
              // لاعداد ديكور المربع
              color: Color(int.parse("0xff5325A8")), // لون خلفية البوكس نفسه
              image: DecorationImage(
                // اضافة صورة من الانترنت خلفية للبوكس
                image: AssetImage("images/bg_home01.jpg"),
                fit: BoxFit.cover, // لجعل الصورة قد المربع بالزبط بدون فراغات
              ),
            ),
          ),
          // العناصر داخل القائمة
          ListTile(
            // بس بدنا نستخدم عنوان مع ايقونة
            title: Text(
              "الصفحة الرئيسية",
              style: TextStyle(
                color: Color(int.parse("0xff0A2634")),
                fontSize: 18,
              ),
            ), // الخيارات في القائمة
            leading: Icon(
              Icons.home_outlined,
              color: Color(int.parse("0xff0A2634")),
              size: 30,
            ),
            // ايقونة قبل العنوان
            //trailing: Icon(Icons.arrow_back_sharp),     // ايقونة بعد العنوان
            //subtitle: Text("النص اسفل التايتل"),
            // نص تحت العنوان
            //isThreeLine: true, // اصلاح المساحات
            // عشان تستخدم ايس تري لاين لازم تفعل سب تايتل
            //dense: true, // تصغير التايتل و السب تايتل
            //contentPadding: EdgeInsets.all(1),   // المساحة حول اللست
            onTap: () {
              Navigator.of(context).pushNamed('Home');
            }, // تفعيل فنكشن عند الضغط
            //onLongPress: (){},  //زي ال اون تاب بس يضغط مطولا
          ),
          Divider(
            color: Color(int.parse("0xffdddddd")),
          ),
          // الخط الفاصل بين الخيارات
          ListTile(
            title: Text(
              "الاقسام",
              style: TextStyle(
                color: Color(int.parse("0xff0A2634")),
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.category_outlined,
              color: Color(int.parse("0xff0A2634")),
              size: 30,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('Category');
            },
          ),
          Divider(
            color: Color(int.parse("0xffdddddd")),
          ),
          ListTile(
            title: Text(
              "حول التطبيق",
              style: TextStyle(
                color: Color(int.parse("0xff0A2634")),
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.info_outlined,
              color: Color(int.parse("0xff0A2634")),
              size: 30,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('About');
            },
          ),
          Divider(
            color: Color(int.parse("0xffdddddd")),
          ),
          ListTile(
            title: Text(
              "الاعدادات",
              style: TextStyle(
                color: Color(int.parse("0xff0A2634")),
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.settings_outlined,
              color: Color(int.parse("0xff0A2634")),
              size: 30,
            ),
            onTap: () {},
          ),
          Divider(
            color: Color(int.parse("0xffdddddd")),
          ),
          ListTile(
            title: Text(
              "تسجيل الخروج",
              style: TextStyle(
                color: Color(int.parse("0xff0A2634")),
                fontSize: 18,
              ),
            ),
            leading: Icon(
              Icons.login_outlined,
              color: Color(int.parse("0xff0A2634")),
              size: 30,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
