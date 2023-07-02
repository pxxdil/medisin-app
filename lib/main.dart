import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:medisin_app/pages/daftarAkun.dart';
import 'package:medisin_app/pages/history.dart';
import 'package:medisin_app/pages/login.dart';
import 'package:medisin_app/pages/notificationPage.dart';
import 'package:medisin_app/pages/onboarding_First.dart';
import 'package:medisin_app/pages/onboarding_Second.dart';
import 'package:medisin_app/pages/onboarding_Third.dart';
import 'package:medisin_app/pages/login.dart';
// import 'package:medisin_app/pages/beranda.dart';
import 'package:medisin_app/pages/berandaBaru.dart';
import 'package:medisin_app/pages/pelayananKami.dart';
// import 'package:medisin_app/pages/history.dart';
import 'package:medisin_app/pages/KlinikTerdekatBooking1.dart';
import 'package:medisin_app/pages/chatDokter.dart';
import 'package:medisin_app/pages/profile.dart';
import 'package:medisin_app/pages/artikel.dart';
import 'package:medisin_app/pages/artikel1.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding_First(),
    );
  }
}
