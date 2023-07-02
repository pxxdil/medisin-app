import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medisin_app/pages/login.dart';
import 'package:medisin_app/pages/onboarding_First.dart';

class daftarAkun extends StatelessWidget {
  daftarAkun({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 162.0, middle: 0.5023),
            Pin(size: 37.0, start: 111.9),
            child: Text(
              'Daftar Akun',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 28,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                height: 1.2857142857142858,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 17.0, middle: 0.4438),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 14,
                color: const Color(0xff0a0a0a),
                letterSpacing: -0.084,
                height: 1.4285714285714286,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 32.0, middle: 0.4846),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  fillColor: const Color(0xffffffff),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color(0xff43936C)), //<-- SEE HERE
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    // border: Border.all(width: 1.0, color: const Color(0xffc2c2c2)),
                  )),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 17.0, middle: 0.3431),
            child: Text(
              'Email',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 14,
                color: const Color(0xff0a0a0a),
                letterSpacing: -0.084,
                height: 1.4285714285714286,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 32.0, middle: 0.3821),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  fillColor: const Color(0xffffffff),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color(0xff43936C)), //<-- SEE HERE
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    // border: Border.all(width: 1.0, color: const Color(0xffc2c2c2)),
                  )),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 17.0, middle: 0.2425),
            child: Text(
              'Nama Lengkap',
              style: TextStyle(
                fontFamily: 'Satoshi',
                fontSize: 14,
                color: const Color(0xff0a0a0a),
                letterSpacing: -0.084,
                height: 1.4285714285714286,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 32.0, middle: 0.2795),
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  fillColor: const Color(0xffffffff),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1, color: Color(0xff43936C)), //<-- SEE HERE
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    // border: Border.all(width: 1.0, color: const Color(0xffc2c2c2)),
                  )),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 20.0, start: 40.0),
            Pin(size: 20.0, middle: 0.5429),
            child: MyStatefulWidget(),
          ),
          Pinned.fromPins(
            Pin(size: 264.0, end: 43.0),
            Pin(size: 15.0, middle: 0.5449),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 12,
                  color: const Color(0xff404040),
                  height: 1.3333333333333333,
                ),
                children: [
                  TextSpan(
                    text: 'I agree the ',
                  ),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                      color: const Color(0xff23408e),
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 89.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff23408e),
                borderRadius: BorderRadius.circular(6.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1f000000),
                    offset: Offset(0, 1),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 89.0),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 305,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff23408E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => onboarding_Second()));
                      },
                      child: Text(
                        'Daftar Akun',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
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
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 38.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(width: 1.0, color: const Color(0xffe0e0e0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1f000000),
                    offset: Offset(0, 1),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 38.0),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 305,
                    height: 40,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          )),
                      onPressed: () {
                        Navigator.push(context, FadeRoute(page: login()));
                      },
                      child: Text(
                        'Sudah Memiliki Akun? Masuk',
                        style: TextStyle(
                          fontFamily: 'Satoshi',
                          fontSize: 16,
                          color: const Color(0xff0A0A0A),
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
            Pin(size: 12.3, start: 41.3),
            Pin(size: 20.5, start: 70.2),
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.string(
                _svg_i0orq,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_li1md9 =
    '<svg viewBox="311.0 392.0 4.0 4.0" ><path transform="translate(303.46, 387.0)" d="M 7.542250156402588 7 C 7.542250156402588 5.895430088043213 8.437680244445801 5 9.54224967956543 5 C 10.64682006835938 5 11.54224967956543 5.895430088043213 11.54224967956543 7 C 11.54224967956543 8.104570388793945 10.64682006835938 9 9.54224967956543 9 C 8.437679290771484 9 7.54224967956543 8.104570388793945 7.54224967956543 7 Z" fill="#757575" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i0orq =
    '<svg viewBox="41.3 70.2 12.3 20.5" ><path transform="translate(41.35, 70.25)" d="M 11.69999980926514 0.6000000238418579 C 12.50115013122559 1.400673389434814 12.50115013122559 2.699326992034912 11.70000076293945 3.5 L 4.949999809265137 10.25 L 11.69999980926514 17 C 12.50081157684326 17.80081176757812 12.50081157684326 19.09918594360352 11.69999885559082 19.89999771118164 C 10.8991870880127 20.7008113861084 9.600813865661621 20.7008113861084 8.800000190734863 19.89999961853027 L 0.6000000238418579 11.69999980926514 C -0.2011501789093018 10.89932727813721 -0.2011504173278809 9.600672721862793 0.5999999046325684 8.799999237060547 L 8.800000190734863 0.6000000238418579 C 9.600674629211426 -0.2011499404907227 10.89932727813721 -0.2011494636535645 11.70000076293945 0.6000007390975952 Z" fill="#424242" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xFFF23408E);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
