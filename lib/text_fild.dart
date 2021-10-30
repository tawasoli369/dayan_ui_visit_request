import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextFildVisit extends StatelessWidget {
  const TextFildVisit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16.0)),
          depth: -5,
          intensity: 2.0,
          surfaceIntensity: 10,
          shadowDarkColor: const Color(0xFF111111),
          shadowLightColor: const Color(0xFF2c2c2c),
          shadowDarkColorEmboss: const Color(0xFFd9d9d9),
          shadowLightColorEmboss: const Color(0xFFffffff),
          color: const Color(0xFFFFFFFF),
          // color: Color(0XFF2c2c2c)
        ),
        // دکمه جستجو و تکست فیلد
        child: Row(
          children: <Widget>[
            // دکمه جستجو
            TextButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'جستجو',
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
            ),
            // تکست فیلد
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                child: TextField(
                  // تعداد خط 1
                  maxLines: 1,
                  // تعداد کاراکتر ورودی 10
                  maxLength: 10,
                  // برای اینکه متن از وسط نمایش داده شود
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                    // suffixIcon: Icon(Icons.person),
                    hintText: "کد کشاورز یا کد بازدید را وارد کنید",
                    // border: ,
                    fillColor: Colors.black,
                    hintStyle: TextStyle(
                      color: Color(0xFF7D818A),
                      fontSize: 11.0,
                      fontFamily: 'Shabnam',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // ),
    );
  }
}
