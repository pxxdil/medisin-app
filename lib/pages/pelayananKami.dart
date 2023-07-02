import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';

class pelayananKami extends StatelessWidget {
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
                  padding: const EdgeInsets.only(left: 82),
                  child: Text(
                    'Pelayanan Kami',
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
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  width: 308,
                  height: 86,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x14000000),
                        offset: Offset(1, 1),
                        blurRadius: 18,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Image.asset('assets/images/telemedisin_Icon.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 22),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Telemedisin',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    height: 1.3333333333333333,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Selengkapnya >',
                                  style: TextStyle(
                                    fontFamily: 'Satoshi',
                                    fontSize: 9,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w400,
                                    height: 1.3333333333333333,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 308,
                    height: 86,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x14000000),
                          offset: Offset(1, 1),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Row(
                        children: [
                          Image.asset('assets/images/ambulance.png',
                              height: 45),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 22),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ambulance',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      height: 1.3333333333333333,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Selengkapnya >',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 9,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333333333,
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 308,
                    height: 86,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x14000000),
                          offset: Offset(1, 1),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 57),
                      child: Row(
                        children: [
                          Image.asset('assets/images/e-apotek.png', height: 70),
                          Padding(
                            padding: const EdgeInsets.only(left: 24, top: 22),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'E-Apotek',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      height: 1.3333333333333333,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Selengkapnya >',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 9,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333333333,
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 308,
                    height: 86,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x14000000),
                          offset: Offset(1, 1),
                          blurRadius: 18,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 56),
                      child: Row(
                        children: [
                          Image.asset('assets/images/booking.png', height: 70),
                          Padding(
                            padding: const EdgeInsets.only(left: 26, top: 22),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Booking',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      height: 1.3333333333333333,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Selengkapnya >',
                                    style: TextStyle(
                                      fontFamily: 'Satoshi',
                                      fontSize: 9,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400,
                                      height: 1.3333333333333333,
                                    ),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
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
