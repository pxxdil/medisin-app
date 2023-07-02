import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';
import 'package:medisin_app/pages/berandaBaru.dart';
import 'package:medisin_app/pages/chatDokter.dart';
import 'package:medisin_app/pages/onboarding_First.dart';
import 'package:medisin_app/pages/profile.dart';

class history extends StatelessWidget {
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
                  'Riwayat Transaksi',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 20,
                    color: const Color(0xFF21217A),
                    fontWeight: FontWeight.w900,
                    height: 1.3333333333333333,
                  ),
                ),
                // Container(
                //   child: Image.asset(
                //     "assets/images/notification_icon.png",
                //     height: 34.5,
                //   ),
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              'assets/images/history_image.png',
              height: 259,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 16),
            child: Row(
              children: [
                Text(
                  'Dalam Proses',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    color: const Color(0xFF21217A),
                    fontWeight: FontWeight.w900,
                    height: 1.3333333333333333,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            'assets/images/empty.png',
            height: 75,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 28),
            child: Row(
              children: [
                Text(
                  'Selesai',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 16,
                    color: const Color(0xFF21217A),
                    fontWeight: FontWeight.w900,
                    height: 1.3333333333333333,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Image.asset(
            'assets/images/empty.png',
            height: 75,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
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
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      FadeRoute(
                        page: chatDokter(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/telemedisinOff.png',
                    width: 26,
                  ),
                ),
                label: 'Telemedisin',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/history.png',
                  width: 26,
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
    );
  }
}
