import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:medisin_app/main.dart';
import 'package:medisin_app/pages/login.dart';

class KlinikTerdekatBooking1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<KlinikTerdekatBooking1> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<Widget> myData = [
    Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.asset(
          'assets/images/slider_satu.png',
        ),
      ),
    ),
    Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.asset(
          'assets/images/slider_satu.png',
        ),
      ),
    ),
    Container(
      height: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.asset(
          "assets/images/slider_dua.png",
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 468.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff23408e),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: [
                    Image.asset('assets/images/location_color.png', height: 18),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, bottom: 2),
                      child: Text(
                        'Jatisari, Bekasi',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 14,
                          color: const Color(0xFF21217A),
                          fontWeight: FontWeight.w600,
                          height: 1.3333333333333333,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(
                    "assets/images/setting.png",
                    height: 22,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 78),
            child: CarouselSlider(
              items: myData,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 268),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: myData.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 6.0,
                    height: 6.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 3.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Color(0xFF21217A))
                            .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 38, top: 332, right: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Klinik Sekitarmu',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 16,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                        height: 1.3333333333333333,
                      ),
                    ),
                    Text(
                      'Selengkapnya',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 14,
                        color: const Color(0xFFFFFF00),
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333333333,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/klinikSekitar1.png',
                          width: 324,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 96),
                          child: Container(
                            width: 296,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(1, 1),
                                  blurRadius: 18,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/images/hospital_Icon.png',
                                    width: 20,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Klinik Nusa Indah',
                                        style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontSize: 13,
                                          color: const Color(0xFF21217A),
                                          fontWeight: FontWeight.w500,
                                          height: 1.3333333333333333,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 13,
                                            decoration: BoxDecoration(
                                              color: Color(0xff23408E),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Image.asset(
                                                    'assets/images/location2.png',
                                                    height: 7,
                                                    width: 7,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 6,
                                                  ),
                                                  child: Text(
                                                    '2 Km',
                                                    style: TextStyle(
                                                      fontFamily: 'Satoshi',
                                                      fontSize: 9,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.3333333333333333,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Image.asset(
                                                      'assets/images/location_color.png',
                                                      height: 9),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Text(
                                                    'Ciamis',
                                                    style: TextStyle(
                                                      fontFamily: 'Satoshi',
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xFF21217A),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.3333333333333333,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 119,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff23408e),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16, top: 4),
                                          child: Text(
                                            'Selengkapnya',
                                            style: TextStyle(
                                              fontFamily: 'Satoshi',
                                              fontSize: 14,
                                              color: const Color(0xffffffff),
                                              letterSpacing: -0.084,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4285714285714286,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/klinikSekitar1.png',
                          width: 324,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, top: 96),
                          child: Container(
                            width: 296,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x14000000),
                                  offset: Offset(1, 1),
                                  blurRadius: 18,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    'assets/images/hospital_Icon.png',
                                    width: 20,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Klinik Naura',
                                        style: TextStyle(
                                          fontFamily: 'Satoshi',
                                          fontSize: 13,
                                          color: const Color(0xFF21217A),
                                          fontWeight: FontWeight.w500,
                                          height: 1.3333333333333333,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 13,
                                            decoration: BoxDecoration(
                                              color: Color(0xff23408E),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Image.asset(
                                                    'assets/images/location2.png',
                                                    height: 7,
                                                    width: 7,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 6,
                                                  ),
                                                  child: Text(
                                                    '800 M',
                                                    style: TextStyle(
                                                      fontFamily: 'Satoshi',
                                                      fontSize: 9,
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.3333333333333333,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 8),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Image.asset(
                                                      'assets/images/location_color.png',
                                                      height: 9),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  child: Text(
                                                    'Jogja',
                                                    style: TextStyle(
                                                      fontFamily: 'Satoshi',
                                                      fontSize: 10,
                                                      color: const Color(
                                                          0xFF21217A),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.3333333333333333,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 119,
                                        height: 32,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff23408e),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 16, top: 4),
                                          child: Text(
                                            'Selengkapnya',
                                            style: TextStyle(
                                              fontFamily: 'Satoshi',
                                              fontSize: 14,
                                              color: const Color(0xffffffff),
                                              letterSpacing: -0.084,
                                              fontWeight: FontWeight.w500,
                                              height: 1.4285714285714286,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(),
        ],
      ),
    );
  }
}
