import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:medisin_app/pages/onboarding_Second.dart';

class onboarding_First extends StatelessWidget {
  onboarding_First({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -197.0, end: -197.0),
            Pin(size: 432.0, start: 44.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      const AssetImage('assets/images/doctor_Onboarding.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 42.0),
            Pin(size: 55.0, middle: 0.7268),
            child: Text(
              'Temukan layanan medis terbaik dan harga terjangkau',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff202020),
                fontWeight: FontWeight.w700,
                height: 1.4,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 78.0, end: 78.0),
            Pin(size: 47.0, middle: 0.829),
            child: Text(
              'Memberikan layanan terbaik kepada \npelanggan dan dengan biaya yang terjangkau',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 12,
                color: const Color(0xff202020),
                fontWeight: FontWeight.w500,
                height: 1.3333333333333333,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 35.0),
            Pin(size: 40.0, end: 25.0),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 305,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD3D9E8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context, FadeRoute(page: onboarding_Second()));
                      },
                      child: Text(
                        'Selanjutnya',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 16,
                          color: const Color(0xff23408E),
                          fontWeight: FontWeight.w500,
                          height: 1.3333333333333333,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.5015),
            Pin(size: 16.0, end: 94.0),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 18.0,
                    height: 6.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 6.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffd6e4ff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 6.0, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffd6e4ff),
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                          border: Border.all(
                              width: 1.0, color: const Color(0xff6690ff)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff6690ff),
                          borderRadius: BorderRadius.all(
                              Radius.elliptical(9999.0, 9999.0)),
                        ),
                        margin: EdgeInsets.all(3.0),
                      ),
                    ],
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

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
