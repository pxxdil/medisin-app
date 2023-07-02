import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medisin_app/pages/berandaBaru.dart';
import 'package:medisin_app/pages/daftarAkun.dart';

class login extends StatelessWidget {
  login({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 106.0, end: 39.0),
            Pin(size: 17.0, middle: 0.5939),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => onboarding_Second()));
              },
              child: Text(
                'Lupa Password ?',
                style: TextStyle(
                  fontFamily: 'Satoshi',
                  fontSize: 14,
                  color: const Color(0xff000000),
                  letterSpacing: -0.084,
                  fontWeight: FontWeight.w500,
                  height: 1.4285714285714286,
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 109.0, middle: 0.5038),
            Pin(size: 48.0, start: 88.4),
            child: Text(
              'Masuk',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 36,
                color: const Color(0xff202020),
                letterSpacing: -0.7919999999999999,
                fontWeight: FontWeight.w700,
                height: 1.2222222222222223,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 15.0, middle: 0.317),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 65.0,
                    height: 1.0,
                    child: SvgPicture.string(
                      _svg_d0gh1x,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 65.0,
                    height: 1.0,
                    child: SvgPicture.string(
                      _svg_e53uhp,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 137.0,
                    height: 15.0,
                    child: Text(
                      'Atau Masuk dengan Email',
                      style: TextStyle(
                        fontFamily: 'Satoshi',
                        fontSize: 12,
                        color: const Color(0x80000000),
                        height: 1.3333333333333333,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 39.0),
            Pin(size: 45.0, middle: 0.2243),
            child: Container(
              decoration: BoxDecoration(),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 39.0),
            Pin(size: 45.0, middle: 0.2243),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(500.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x40000000),
                    offset: Offset(1, 1),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.212, -0.532),
            child: SizedBox(
              width: 177.0,
              height: 17.0,
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => onboarding_Second()));
                },
                child: Text(
                  'Masuk dengan Akun Google',
                  style: TextStyle(
                    fontFamily: 'Satoshi',
                    fontSize: 14,
                    color: const Color(0xff202020),
                    letterSpacing: -0.084,
                    fontWeight: FontWeight.w500,
                    height: 1.4285714285714286,
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 17.0, middle: 0.3763),
            child: Text(
              'Email Address',
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
            Pin(size: 32.0, middle: 0.4159),
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
            Pin(size: 17.0, middle: 0.4858),
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
            Pin(size: 32.0, middle: 0.5274),
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
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 32.0),
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
            Pin(size: 40.0, end: 32.0),
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
                        Navigator.push(
                          context,
                          MyCustomPageRoute(
                            parent: this,
                            builder: (context) => daftarAkun(),
                          ),
                        );
                      },
                      child: Text(
                        'Daftar Akun',
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
            Pin(start: 33.0, end: 33.0),
            Pin(size: 40.0, end: 84.0),
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
            Pin(size: 40.0, end: 84.0),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => berandaBaru()));
                      },
                      child: Text(
                        'Login',
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
          Align(
            alignment: Alignment(-0.557, -0.541),
            child: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(),
                  ),
                  Pinned.fromPins(
                    Pin(size: 13.7, end: 2.0),
                    Pin(size: 13.2, middle: 0.7139),
                    child: SvgPicture.string(
                      _svg_df3k5j,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 22.2, start: 3.5),
                    Pin(size: 11.2, end: 2.0),
                    child: SvgPicture.string(
                      _svg_pd1fb6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 6.2, start: 2.0),
                    Pin(size: 12.6, middle: 0.4982),
                    child: SvgPicture.string(
                      _svg_mej12,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 22.3, start: 3.5),
                    Pin(size: 11.2, start: 2.0),
                    child: SvgPicture.string(
                      _svg_x9ktz2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
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

const String _svg_d0gh1x =
    '<svg viewBox="270.0 239.0 65.0 1.0" ><path transform="matrix(1.0, 0.0, 0.0, 1.0, 270.0, 239.0)" d="M 0 0 L 65 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e53uhp =
    '<svg viewBox="40.0 239.0 65.0 1.0" ><path transform="matrix(1.0, 0.0, 0.0, 1.0, 40.0, 239.0)" d="M 0 0 L 65 0" fill="none" fill-opacity="0.5" stroke="#000000" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_df3k5j =
    '<svg viewBox="16.3 13.4 13.7 13.2" ><path transform="translate(16.29, 13.45)" d="M 9.460000038146973 13.15999984741211 L 9.166000366210938 13.13099956512451 L 4.926000118255615 9.911999702453613 L 4.953000068664551 9.73799991607666 C 6.508662223815918 8.690943717956543 7.564730644226074 7.049696922302246 7.873001098632812 5.200000286102295 L 0 5.199999809265137 L 0 0 L 13.41300010681152 0 C 13.62971496582031 0.9381335973739624 13.73046684265137 1.899319410324097 13.71299934387207 2.862000226974487 C 13.83721256256104 6.745643615722656 12.28843212127686 10.49577713012695 9.460001945495605 13.16000175476074 Z" fill="#4285f4" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pd1fb6 =
    '<svg viewBox="3.5 18.8 22.2 11.2" ><path transform="translate(3.52, 18.77)" d="M 0 3.516000032424927 L 0.05799999833106995 3.358999967575073 L 4.467000007629395 0.01400000043213367 L 4.635000228881836 0 C 5.819230079650879 3.47911262512207 9.08686637878418 5.818365573883057 12.76200199127197 5.818000316619873 C 14.51703929901123 5.86906623840332 16.24548721313477 5.380409240722656 17.7140007019043 4.417998790740967 L 22.22200012207031 7.840000152587891 C 19.60799789428711 10.12093925476074 16.22978210449219 11.33188247680664 12.76199913024902 11.23100185394287 C 7.398106575012207 11.25502014160156 2.471405029296875 8.27668571472168 9.5367431640625e-07 3.516002893447876 Z" fill="#34a853" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mej12 =
    '<svg viewBox="2.0 9.6 6.2 12.6" ><path transform="translate(2.0, 9.65)" d="M 1.52400004863739 12.63700008392334 C -0.507777214050293 8.693660736083984 -0.507777214050293 4.011337280273438 1.524002075195312 0.06799697875976562 L 1.669999957084656 0 L 6.135000228881836 3.400000095367432 L 6.14300012588501 3.586000204086304 C 5.844033241271973 4.478822708129883 5.688765525817871 5.41346549987793 5.682999610900879 6.35499906539917 C 5.686275482177734 7.298075675964355 5.847159385681152 8.233970642089844 6.159000873565674 9.124002456665039 L 1.52400004863739 12.63700008392334 Z" fill="#fbbc05" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9ktz2 =
    '<svg viewBox="3.5 2.0 22.3 11.2" ><path transform="translate(3.52, 2.0)" d="M 4.61899995803833 11.23099994659424 L 0 7.715000152587891 C 2.471407890319824 2.954315185546875 7.398109436035156 -0.024017333984375 12.76200294494629 0 C 16.29451560974121 -0.04710197448730469 19.71203231811523 1.254673004150391 22.31800079345703 3.639998435974121 L 18.2859992980957 7.5 C 16.77787780761719 6.126070022583008 14.80182838439941 5.380222320556641 12.76199817657471 5.414999961853027 C 9.084510803222656 5.418789863586426 5.814395427703857 7.755217552185059 4.618999481201172 11.23299884796143 Z" fill="#eb4335" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';

class MyCustomPageRoute<T> extends MaterialPageRoute<T> {
  final Widget parent;

  MyCustomPageRoute({
    required this.parent,
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(_, Animation<double> animation, __, Widget child) {
    var anim1 = Tween<Offset>(begin: Offset.zero, end: Offset(-1.0, 0.0))
        .animate(animation);
    var anim2 = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
        .animate(animation);
    return Stack(
      children: <Widget>[
        SlideTransition(position: anim1, child: parent),
        SlideTransition(position: anim2, child: child),
      ],
    );
  }
}
