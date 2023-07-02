import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';
import 'package:medisin_app/pages/login.dart';
import 'package:medisin_app/pages/berandaBaru.dart';

class notificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //Logo
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/icon_back.png",
                      height: 22.5,
                    ),
                  ),
                  //Icon Notification
                  Text(
                    'Notifikasi',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: const Color(0xFF21217A),
                      fontWeight: FontWeight.w900,
                      height: 1.3333333333333333,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/notification_icon.png",
                      height: 34.5,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
