import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: const Color(0xFFE7EDF3),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(4),
            reverse: false,
            children: <Widget>[
              // نام و نام خانوادگی
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  right: 10,
                ),
                child: Text(
                  'نام و نام خانوادگی',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              Container(
                // child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(16.0)),
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
                    children: const <Widget>[
                      // تکست فیلد
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          child: TextField(
                            // تعداد خط 1
                            maxLines: 1,
                            // تعداد کاراکتر ورودی 40
                            maxLength: 40,
                            // برای اینکه متن از وسط نمایش داده شود
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                              fontFamily: 'Shabnam',
                            ),
                            decoration: InputDecoration(
                              counterText: "",
                              // border: ,
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ),
              ),
              // شماره موبایل
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  right: 10,
                ),
                child: Text(
                  'شماره موبایل',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              Container(
                // child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(16.0)),
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
                      // تکست فیلد
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          child: TextField(
                            // تعداد خط 1
                            maxLines: 1,
                            // تعداد کاراکتر ورودی 11
                            maxLength: 11,
                            // برای اینکه متن از وسط نمایش داده شود
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.done,
                            style: const TextStyle(
                              fontFamily: 'Shabnam',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              counterText: "",
                              // border: ,
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ),
              ),
              // آدرس باغ
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  right: 10,
                ),
                child: Text(
                  'آدرس باغ یا مزرعه',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              // استان
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButton<String>(
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Shabnam',
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    const Text(
                      'استان :',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Shabnam',
                      ),
                    ),
                  ],
                ),
              ),
              // شهر
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButton<String>(
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Shabnam',
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    const Text(
                      'شهر :',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Shabnam',
                      ),
                    ),
                  ],
                ),
              ),
              // منطقه
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  right: 10,
                ),
                child: Text(
                  'منطقه',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              Container(
                // child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(16.0)),
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
                      // تکست فیلد
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          child: TextField(
                            // تعداد خط 1
                            maxLines: 1,
                            // تعداد کاراکتر ورودی 2
                            maxLength: 2,
                            // برای اینکه متن از وسط نمایش داده شود
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.next,
                            style: const TextStyle(
                              fontFamily: 'Shabnam',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              counterText: "",
                              // border: ,
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ),
              ),
              // مسافت مزرعه تا نزدیک ترین شهرستان (کیلومتر)
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  right: 10,
                ),
                child: Text(
                  'مسافت مزرعه تا نزدیک ترین شهرستان (کیلومتر)',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              Container(
                // child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(16.0)),
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
                      // تکست فیلد
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          child: TextField(
                            // تعداد خط 1
                            maxLines: 1,
                            // تعداد کاراکتر ورودی 4
                            maxLength: 4,
                            // برای اینکه متن از وسط نمایش داده شود
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.done,
                            style: const TextStyle(
                              fontFamily: 'Shabnam',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: const InputDecoration(
                              counterText: "",
                              // border: ,
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ),
              ),
              // نوع کاشت
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DropdownButton<String>(
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontFamily: 'Shabnam',
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    const Text(
                      'نوع کشت :',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Shabnam',
                      ),
                    ),
                  ],
                ),
              ),
              // مساحت کل مزرعه/باغ
              const Padding(
                // ignore: prefer_const_constructors
                padding: EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                  right: 10,
                ),
                child: Text(
                  'مساحت کل مزرعه/باغ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: 'ShabnamBold',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Radio<SingingCharacter>(
                      value: SingingCharacter.lafayette,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    const Text(
                      'متر مربع',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Shabnam',
                      ),
                    ),
                    Radio<SingingCharacter>(
                      value: SingingCharacter.jefferson,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    const Text(
                      'هکتار',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Shabnam',
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Expanded(
                        child: Container(
                          // child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              shape: NeumorphicShape.concave,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(16.0)),
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
                                // تکست فیلد
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 0.0),
                                    child: TextField(
                                      // تعداد خط 1
                                      maxLines: 1,
                                      // تعداد کاراکتر ورودی 6
                                      maxLength: 6,
                                      // برای اینکه متن از وسط نمایش داده شود
                                      textAlign: TextAlign.center,
                                      textInputAction: TextInputAction.done,
                                      style: const TextStyle(
                                        fontFamily: 'Shabnam',
                                      ),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: const InputDecoration(
                                        counterText: "",
                                        // border: ,
                                        fillColor: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // ),
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
    );
  }
}
