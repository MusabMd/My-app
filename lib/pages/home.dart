import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../component/MyDrawer.dart';

// بعمل امبورت لاعدادات الصفحة

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

// class home
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // return فيها بحط جسم الصفحة
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // تقسيم محتويات الصفحة
        appBar: AppBar(
          title: Text('الصفحة الرئيسية'),
          // عنوان الصفحة
          //backgroundColor: Colors.red, // لون الناف بار
          flexibleSpace: Image(
            // لوضع صورة خلفية للاب بار
            image: AssetImage("images/bg_home.jpg"),
            // جلب الصور من ملف اسست الخاص بي
            fit: BoxFit.cover,
          ),
          actions: [
            // لاضافة ايقونات التحكم
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('ابحث هنا'),
                        content: Text('ادخل اسم الهاتف'),
                        actions: [
                          FlatButton(onPressed: () {}, child: Text('ابحث')),
                          FlatButton(onPressed: () {}, child: Text('الغاء')),
                        ],
                      );
                    });
              }, // اضافة ايقوتة الاول ايقونة الثاني لتفعيل فنكشن عند الضغط
            ),
            // IconButton(icon: Icon(Icons.add_to_photos) ,onPressed: (){} ,
            // )
          ],
          centerTitle: true,
          // لجعل العنوان بالمنتصف
          elevation: 10,
          // الشادو او الظل
          //leading: IconButton(icon: Icon(Icons.search), onPressed: (){}), // عكس الاكشن في الموقع للايقونات
          // titleSpacing: 60,  // المساحة حول العنوان بالعرض في الناف بار يمين و شمال
          brightness:
              Brightness.dark, // لون الشريط الخاص بالهاتف البطارية و الشحن
          //primary: false, // ازالة المارجن للب بار من فوق
        ), // الناف بار عنوان
        // drawer
        // القائمة الجانبية
        //drawer: Drawer(), // eng lang
        drawer: MyDrawer(),
        // ar lang
        body: ListView(
          children: [
            Container(
              // slider
              height: 250.0,
              width: double.infinity, // العرض بالكامل
              child: Carousel(
                images: [
                  AssetImage('images/slid_one.jpg'),
                  AssetImage('images/slid_tow.jpg'),
                  AssetImage('images/slid_three.jpg'),
                  //AssetImage('images/slid_three.jpg'), // or Image.asset used // هاي ما بتقبل جواتها فت للصورة
                  // Image.asset ما بعدل ع الريديس تبعتها
                ],
                dotSize: 5,
                // حجم نقاط السلايدر
                dotIncreaseSize: 2,
                // زيادة حجم النقطة عند الاختيار
                dotSpacing: 30,
                //المسافة بين النقاط
                dotColor: Colors.white24,
                //لون النقاط المش اكتف
                dotIncreasedColor: Color(int.parse("0xffFFFF00")),
                // لون النقطة الاكتف
                //dotBgColor: Colors.grey[900].withOpacity(0.6), // لون خلفية النقاط البار
                dotBgColor: Color(int.parse("0xff13274F")).withOpacity(0.9),
                //showIndicator: false, // لاضهار النقاط و الخلفية
                //indicatorBgPadding: 40, // بادنج البار
                //boxFit: BoxFit.cover,  // في حال استخدمت اسست بستخدم الفت هون لانو الاسست ما بتقبل فت
                // borderRadius:true,
                //radius: Radius.circular(30.0),
                //overlayShadow: false,
                //overlayShadowColors: Colors.red.withOpacity(0.3),
                //overlayShadowSize:0.6,
                autoplay: true,
                // السلايدر بقللب صور لحاله
                autoplayDuration: Duration(seconds: 7), // وقت انتقال السلايد
              ),
            ),
            // end Carousel
            Container(
              padding: const EdgeInsets.all(15.0),
              //padding: const EdgeInsets.only(right: 15.0), // padding only left or right
              child: Text(
                "الاقسام",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(int.parse("0xff13274F")),
                ),
              ),
            ),
            // start category
            Container(
              height: 100, // لازم احط الطول ثابت
              child: ListView(
                scrollDirection: Axis.horizontal, // سكرول جانبي الديفولت طولي
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset('images/Artboard – 4.png'),
                        subtitle: Container(
                          child: Text(
                            "آيفون",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // عشان النص يكون سنتر لانو السب تايتل ما بتقبل السنتر
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("apply");
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset(
                          'images/Artboard – 5.png',
                          fit: BoxFit.fill,
                        ),
                        subtitle: Container(
                          child: Text(
                            "سامسونج",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset(
                          'images/Artboard – 6.png',
                          fit: BoxFit.fill,
                        ),
                        subtitle: Container(
                          child: Text(
                            "شاومي",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset(
                          'images/Artboard – 7.png',
                          fit: BoxFit.fill,
                        ),
                        subtitle: Container(
                          child: Text(
                            "هواوي",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset(
                          'images/Artboard – 8.png',
                          fit: BoxFit.fill,
                        ),
                        subtitle: Container(
                          child: Text(
                            "نوكيا",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: ListTile(
                        title: Image.asset(
                          'images/Artboard – 9.png',
                          fit: BoxFit.fill,
                        ),
                        subtitle: Container(
                          child: Text(
                            "سوني",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            // end category
            Container(
              padding: const EdgeInsets.all(15.0),
              //padding: const EdgeInsets.only(right: 15.0), // padding only left or right
              child: Text(
                "آخر المنتجات",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(int.parse("0xff13274F")),
                ),
              ),
            ),
            // start last product
            Container(
              height: 400,
              child: GridView(
                // نفس مبدأ الليست فيو
                // مع امكانية حديد عدد العناصر في السطر
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                // الرقم هو عدد البوكسات الظاهره في الشاشة في السطر
                children: [
                  // InkWell(), الروابط
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/phone/00.png'),
                      footer: Container(
                        // footer  نفس السب تايتل
                        height: 30,
                        color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                        child: Text(
                          "سامسونج A21s",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {}, // زر التنقل
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/phone/01.png'),
                      footer: Container(
                        // footer  نفس السب تايتل
                        height: 30,
                        color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                        child: Text(
                          "سامسونج A20",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {}, // زر التنقل
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/phone/02.png'),
                      footer: Container(
                        // footer  نفس السب تايتل
                        height: 30,
                        color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                        child: Text(
                          "سامسونج A50",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {}, // زر التنقل
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/phone/03.png'),
                      footer: Container(
                        // footer  نفس السب تايتل
                        height: 30,
                        color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                        child: Text(
                          "ايفون 11pro",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {}, // زر التنقل
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset('images/phone/04.png'),
                      footer: Container(
                        // footer  نفس السب تايتل
                        height: 30,
                        color: Color(int.parse("0xff13274F")).withOpacity(0.9),
                        child: Text(
                          "ايفون 11 pro max",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {}, // زر التنقل
                  ),
                ],
              ),
            ),
            // end last product
          ],
        ),
      ),
    );
  }
}
