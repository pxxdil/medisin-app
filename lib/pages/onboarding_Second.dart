import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:medisin_app/pages/onboarding_Third.dart';
import 'package:medisin_app/pages/onboarding_First.dart';

class onboarding_Second extends StatelessWidget {
  onboarding_Second({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 78.0, end: 78.0),
            Pin(size: 47.0, middle: 0.829),
            child: Text(
              'Kami selalu berusaha memberikan\nyang terbaik kepada penyedia pelayanan kesehatan dan pelanggan',
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
            Pin(start: 84.0, end: 84.0),
            Pin(size: 55.0, middle: 0.7268),
            child: Text(
              'Memberikan yang terbaik ',
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
                            context, FadeRoute(page: onboarding_Third()));
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
            Pin(start: -71.0, end: -72.0),
            Pin(size: 518.0, start: 26.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                      'assets/images/consultation_Onboarding.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.5015),
            Pin(size: 16.0, end: 94.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 6.0, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
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
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, middle: 0.5),
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
