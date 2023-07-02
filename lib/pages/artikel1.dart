import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';

class artikel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
            child: Row(
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
                Padding(
                  padding: const EdgeInsets.only(left: 116),
                  child: Text(
                    'Artikel',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: const Color(0xFF21217A),
                      fontWeight: FontWeight.w900,
                      height: 1.3333333333333333,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Image.asset('assets/images/artikel1.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Lakukan Hal ini saat Stress',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: const Color(0xFF21217A),
                      fontWeight: FontWeight.bold,
                      height: 1.3333333333333333,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 61,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Color(0xffD3D9E8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Text(
                              'Kesehatan',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 10,
                                color: Color(0xff23408E),
                                fontWeight: FontWeight.w400,
                                height: 1.3333333333333333,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        width: 63,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Color(0xffD3D9E8),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Text(
                                'Tips & Trick',
                                style: TextStyle(
                                  fontFamily: 'Satoshi',
                                  fontSize: 10,
                                  color: Color(0xff23408E),
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333333333,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Text(
                  'Cara Mengatasi Stres – Stres tidak bisa lepas dari \nkehidupan kita dan bisa timbul pada Hampir setiap \norang pernah mengalami stres. Namun, kondisi ini \ntidak boleh dibiarkan berlarut-larut. Agar stres tidak \nterus berlanjut sampai menimbulkan gangguan \nkesehatan, ada beragam cara mudah untuk mengatasi \nstres yang dapat Anda lakukan. Stres merupakan \nkondisi yang sangat umum terjadi. Dalam kondisi \nnormal, stres bisa memberikan dampak positif, \nmisalnya membantu Anda bekerja lebih cepat \nketika harus menyelesaikan tugas sebelum \ntenggat waktu.',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 12,
                    color: Color(0xff23408E),
                    fontWeight: FontWeight.w400,
                    height: 1.3333333333333333,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
