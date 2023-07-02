import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:medisin_app/pages/KlinikTerdekatBooking1.dart';
// import 'package:medisin_app/pages/klinikTerdekat.dart';
import 'package:medisin_app/pages/KlinikTerdekatBooking1.dart';
import 'package:medisin_app/pages/chatDokter.dart';
import 'package:medisin_app/pages/history.dart';
import 'package:medisin_app/pages/login.dart';
import 'package:medisin_app/pages/notificationPage.dart';
import 'package:medisin_app/pages/pelayananKami.dart';
import 'package:medisin_app/pages/onboarding_First.dart';
import 'package:medisin_app/pages/profile.dart';

class berandaBaru extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<berandaBaru> {
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
      resizeToAvoidBottomInset: false,
      extendBody: true,
      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          onPressed: () {
            //action after pressing this button
          },
          child: Icon(Icons.message_rounded),
          backgroundColor: Color(0xFF21217A),
        ),
      ),
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //Logo
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/logo_256px.png",
                        height: 49,
                        width: 123,
                      ),
                    ),
                    //Icon Notification
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MyCustomPageRoute(
                            parent: berandaBaru(),
                            builder: (context) => notificationPage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/images/notification_icon.png",
                        height: 34.5,
                      ),
                    )
                  ]),
            ),
            CarouselSlider(
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
            Row(
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
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 30, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pelayanan Kami',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: const Color(0xFF21217A),
                      fontWeight: FontWeight.w900,
                      height: 1.3333333333333333,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MyCustomPageRoute(
                          parent: berandaBaru(),
                          builder: (context) => pelayananKami(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/images/icon_more.png",
                      height: 22.5,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 26, left: 21, right: 21, bottom: 28),
                child: Row(
                  children: [
                    Container(
                      width: 210,
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            FadeRoute(
                              page: chatDokter(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7, top: 4),
                              child: Image.asset(
                                  'assets/images/telemedisin_Icon.png'),
                            ),
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
                    SizedBox(width: 16),
                    Container(
                      width: 210,
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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 4),
                            child: Image.asset('assets/images/ambulance.png',
                                height: 45),
                          ),
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
                    SizedBox(width: 16),
                    Container(
                      width: 210,
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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 7, top: 4),
                            child: Image.asset('assets/images/e-apotek.png',
                                height: 70),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16, top: 22),
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
                    SizedBox(width: 16),
                    Container(
                      width: 210,
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
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MyCustomPageRoute(
                              parent: berandaBaru(),
                              builder: (context) => KlinikTerdekatBooking1(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 4),
                              child: Image.asset('assets/images/booking.png',
                                  height: 70),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, top: 22),
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
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/emergency_Background2.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 20),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => onboarding_Second()));
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/button_emergency.png',
                            height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'EMERGENCY \nAMBULANCE',
                            style: TextStyle(
                              fontFamily: 'Satoshi',
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              height: 1.3333333333333333,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120, left: 36),
                  child: Stack(
                    children: [
                      Container(
                        width: 314,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff23408e)),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9, left: 25),
                            child: Text(
                              'Current Location',
                              style: TextStyle(
                                fontFamily: 'Satoshi',
                                fontSize: 14,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                height: 1.3333333333333333,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 144),
                            child: Container(
                              width: 169,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff23408e),
                                borderRadius: BorderRadius.circular(200.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 24),
                                    child: Image.asset(
                                        'assets/images/location.png',
                                        height: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12, bottom: 2),
                                    child: Text(
                                      'Jatisari, Bekasi',
                                      style: TextStyle(
                                        fontFamily: 'Satoshi',
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.w400,
                                        height: 1.3333333333333333,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Klinik Terdekat',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontSize: 20,
                      color: const Color(0xFF21217A),
                      fontWeight: FontWeight.w900,
                      height: 1.3333333333333333,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MyCustomPageRoute(
                          parent: berandaBaru(),
                          builder: (context) => KlinikTerdekatBooking1(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/images/icon_more.png",
                      height: 22.5,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 28, top: 24, right: 16),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 126,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/klinik_nusa_indah.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Klinik Nusa Indah',
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
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Image.asset(
                                                'assets/images/location2.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              '2 Km',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
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
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, top: 2),
                                            child: Image.asset(
                                                'assets/images/location_color.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              'Ciamis',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: const Color(0xFF21217A),
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333333333,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 126,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/klinik_nusa_indah.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Klinik Naura',
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
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, top: 2),
                                            child: Image.asset(
                                                'assets/images/location2.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              '2 Km',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
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
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, top: 2),
                                            child: Image.asset(
                                                'assets/images/location_color.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              'Bantul',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: const Color(0xFF21217A),
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333333333,
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
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 126,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/klinik_nusa_indah.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Klinik Nusa Indah',
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
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, top: 2),
                                            child: Image.asset(
                                                'assets/images/location2.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              '2 Km',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
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
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4, top: 2),
                                            child: Image.asset(
                                                'assets/images/location_color.png',
                                                height: 9),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              'Ciamis',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 10,
                                                color: const Color(0xFF21217A),
                                                fontWeight: FontWeight.w400,
                                                height: 1.3333333333333333,
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Artikel',
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
                      "assets/images/icon_more.png",
                      height: 22.5,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 340,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 28, top: 24, right: 16, bottom: 30),
                          child: Stack(
                            children: [
                              Container(
                                width: 205,
                                height: 220,
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
                                      width: 205,
                                      height: 116,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          "assets/images/artikel1.png",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Lakukan Hal ini ketika \nSedang Stress',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 14,
                                                color: const Color(0xFF21217A),
                                                fontWeight: FontWeight.w500,
                                                height: 1.3333333333333333,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              Container(
                                                width: 61,
                                                height: 13,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffD3D9E8),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 6),
                                                      child: Text(
                                                        'Kesehatan',
                                                        style: TextStyle(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 9,
                                                          color:
                                                              Color(0xff23408E),
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
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Container(
                                                  width: 61,
                                                  height: 13,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffD3D9E8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 6),
                                                        child: Text(
                                                          'Tips & Trick',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Satoshi',
                                                            fontSize: 9,
                                                            color: Color(
                                                                0xff23408E),
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
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8, top: 24, right: 24, bottom: 30),
                          child: Stack(
                            children: [
                              Container(
                                width: 205,
                                height: 220,
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
                                      width: 205,
                                      height: 116,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          "assets/images/artikel1.png",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'Lakukan Hal ini ketika \nSedang Stress',
                                              style: TextStyle(
                                                fontFamily: 'Satoshi',
                                                fontSize: 14,
                                                color: const Color(0xFF21217A),
                                                fontWeight: FontWeight.w500,
                                                height: 1.3333333333333333,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              Container(
                                                width: 61,
                                                height: 13,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffD3D9E8),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 6),
                                                      child: Text(
                                                        'Kesehatan',
                                                        style: TextStyle(
                                                          fontFamily: 'Satoshi',
                                                          fontSize: 9,
                                                          color:
                                                              Color(0xff23408E),
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
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                child: Container(
                                                  width: 61,
                                                  height: 13,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffD3D9E8),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 6),
                                                        child: Text(
                                                          'Tips & Trick',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Satoshi',
                                                            fontSize: 9,
                                                            color: Color(
                                                                0xff23408E),
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
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
                  icon: Image.asset(
                    'assets/images/home.png',
                    width: 26,
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
