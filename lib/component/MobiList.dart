import 'package:flutter/material.dart';
import 'package:test_project/pages/DetailsPage.dart';

class MobiList extends StatelessWidget {
  final name;

  final ram;

  final color1;

  final color2;

  final price;

  MobiList({this.name, this.ram, this.color1, this.color2, this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 150,
        width: 100,
        child: Card(
          child: Row(
            children: [
              Expanded(
                // الاكس باندد كم بتحط جوا السطر بيقسم السطر اقسام بعددهم
                flex: 3, // تحديد حجم الاكس باندد من الباقي
                child: Image.asset(
                  "images/phone/04.png",
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.topRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // عشان احط محتويات الكولوم بالبداية
                    // X بالنسبة للكولوم
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // y بالنسبة للكولوم بتتحكم في ال
                    children: [
                      Text(
                        //mobilelois[i]['name'],
                        // ignore: unnecessary_brace_in_string_interps
                        "الاسم : ${name}",
                        // name,
                        // "الاسم: ${price}"
                        // بس امررهم للكلاس زي م عملت هون بستدعيهم بدون اسم الكلاس بالاسم بس
                        // " الاسم : ${mobilelois[i]['name']} ",
                        // اذا بدك تستدعي اشي جوا نص
                      ),
                      Text(
                        // mobilelois[i]['ram'],
                        // ignore: unnecessary_brace_in_string_interps
                        "الرام : ${ram}",
                        // ram,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //عشان احط محتويات الرو بالبداية او وسط او نهاية السطر
                        children: [
                          Expanded(
                            // flex: 1,
                            child: Text(
                              'الأللوان',
                            ),
                          ),
                          Expanded(
                            // flex: 1,
                            child: Text(
                              ':',
                            ),
                          ),
                          Expanded(
                            // flex: 1,
                            child: Text(
                              // mobilelois[i]['color1'],
                              color1,
                            ),
                          ),
                          Expanded(
                            // flex: 1,
                            child: Text(
                              // mobilelois[i]['color2'],
                              color2,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.all(6),
                        // same margin >> padding: EdgeInsets.only(top: 10),
                        child: Text(
                          // mobilelois[i]['price'],
                          // ignore: unnecessary_brace_in_string_interps
                          "السعر : ${price} دينار",
                          // price,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red,
                      ),
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.all(4),
                      // alignment: Alignment.topLeft,
                      // لوضع النص في الزاوية العلوية اليمنى
                      child: Container(
                        child: Text(
                          'عرض',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        // Navigator.of(context).pushNamed('DetailsPage');
        // ما بينفع لارسال البيانات عشان هيك حذفناه
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailsPage(
              name: name,
              ram: ram,
              color1: color1,
              color2: color2,
              price: price,
            );
          },
          ),
        );
      },
    );
  }
}
