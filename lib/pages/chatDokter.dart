import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';
import 'package:medisin_app/pages/history.dart';
import 'package:medisin_app/pages/onboarding_First.dart';
import 'package:medisin_app/pages/berandaBaru.dart';
import 'package:medisin_app/pages/profile.dart';

class chatDokter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //Logo
              children: [
                //Icon Notification
                Text(
                  'Chat dengan Dokter',
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
                    "assets/images/chatDokter_Icon.png",
                    height: 30.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(300.0),
            boxShadow: [
              BoxShadow(
                color: const Color(0x143333cc),
                offset: Offset(4, 20),
                blurRadius: 20,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              currentIndex: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: berandaBaru(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/homeOff.png',
                      width: 26,
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/telemedisin.png',
                    width: 26,
                  ),
                  label: 'Telemedisin',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: history(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/historyOff.png',
                      width: 26,
                    ),
                  ),
                  label: 'History',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        FadeRoute(
                          page: profile(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/profileOff.png',
                      width: 30,
                    ),
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
