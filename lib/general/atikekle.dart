import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './atikekle1.dart';
import 'package:adobe_xd/page_link.dart';

class atikekle extends StatelessWidget {
  atikekle({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 46.0, end: 46.0),
            Pin(size: 70.0, middle: 0.6367),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Atıklarınızı Sisteme Bildirmek İçin\nLütfen',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '  +',
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: '  Tuşuna Basınız',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.66),
            child: SizedBox(
              width: 96.0,
              height: 96.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => atikekle1(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe5e527),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffffffff)),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 36.0, middle: 0.5),
                      Pin(start: 10.0, end: 10.0),
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 54,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 91.0, end: 90.0),
            Pin(size: 250.0, start: 20.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://i.hizliresim.com/drad9fw.png")),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.002),
            child: SizedBox(
              width: 292.0,
              height: 58.0,
              child: Text(
                'Birikmiş geri dönüştürülebilir\natığınız mı var?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 238.0, middle: 0.5),
            Pin(size: 20.0, end: 50.0),
            child: Text(
              'Sizin için alıp depoya götüreceğiz',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
