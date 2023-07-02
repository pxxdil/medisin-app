import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';

class artikel extends StatelessWidget {
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
            padding: const EdgeInsets.only(top: 24, bottom: 30),
            child: Container(
              width: 338,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x14000000),
                    offset: Offset(1, 1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 338,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/foto_Artikel1.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, top: 15),
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
                        SizedBox(height: 10),
                        Text(
                          'Cara Mengatasi Stres – Stress tidak bisa lepas dari \n kehidupan kita dan bisa timbul pada...',
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              width: 338,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x14000000),
                    offset: Offset(1, 1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 338,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/foto_Artikel2.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Manfaat Rutin Memakan Buah',
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
                        SizedBox(height: 10),
                        Text(
                          'Cara Mengatasi Stres – Stress tidak bisa lepas dari \n kehidupan kita dan bisa timbul pada...',
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
            ),
          ),
        ],
      ),
    );
  }
}
