import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../constant/utils.dart';

class HeaderUserWidget extends StatelessWidget {
  const HeaderUserWidget({Key? key}) : super(key: key);

  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    double scrWidth = 0.0;
    double scrHeight = 0.0;

    scrWidth = MediaQuery.of(context).size.width;
    scrHeight = MediaQuery.of(context).size.height;

    return Row(

      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // logo
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: IconButton(
            onPressed: () {
              launchUrl("https://github.com/prajyot-pawar");
            },
            iconSize: scrHeight / 10,
            icon: Image.asset(
              'assets/logo.png',
              //color: Colors.black,
              height: scrHeight / 10,
              width: scrHeight / 10,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Text(
          'MahaBhoomi',
          style: TextStyle(
            fontFamily: 'AutourOne',
            fontWeight: FontWeight.bold,
            fontSize: 25,
            // letterSpacing: 1.627907,
          ),
        ),
        // const SizedBox(
        //   width: width/10, //<-- SEE HERE
        // ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15, top: 10, bottom: 10, right: 50),
            child: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const CheckPrivateKey(
                //               val: "UserLogin",
                //             )));
                Navigator.pop(context);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const home_page()));
                Navigator.of(context).pushNamed(
                  '/',
                );
              },
              child: MouseRegion(
                onHover: (PointerHoverEvent evt) {
                  appContainer?.style.cursor = 'pointer';
                },
                onExit: (PointerExitEvent evt) {
                  appContainer?.style.cursor = 'default';
                },
                child: const Text(
                  'Log-out',
                  style: TextStyle(
                    fontFamily: 'Lato-bold',
                    color: Color(0xff28313b),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1.627907,
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(14.0),
          //   child: GestureDetector(
          //     onTap: () async {
          //       // await Navigator.push(context,
          //       //     MaterialPageRoute(builder: (context) => RegisterUser()));
          //     },
          //     child: MouseRegion(
          //       onHover: (PointerHoverEvent evt) {
          //         appContainer?.style.cursor = 'pointer';
          //       },
          //       onExit: (PointerExitEvent evt) {
          //         appContainer?.style.cursor = 'default';
          //       },
          //       child: const Text(
          //         'About',
          //         style: TextStyle(
          //           color: Color(0xff28313b),
          //           fontSize: 15,
          //           fontWeight: FontWeight.w400,
          //           fontStyle: FontStyle.normal,
          //           letterSpacing: 1.627907,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10, bottom: 5, top: 5, left: 10),
            child: IconButton(
              onPressed: () {
                launchUrl("https://github.com/prajyot-pawar");
              },
              iconSize: scrHeight / 10,
              icon: Image.asset(
                'map.png',
                //color: Colors.black,
                height: scrHeight / 10,
                width: scrHeight / 10,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ])
      ],
    );
  }
}
