import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:mahabhoomiweb/screens/home_page.dart';
// import 'package:mahabhoomiweb/constants/constants.dart';
import 'package:universal_html/html.dart' as html;
// import 'package:flutter_svg/flutter_svg.dart';
import '../constant/utils.dart';

class FooterWidget extends StatelessWidget {
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  double scrHeight = 00.0;

  double scrWidth = 00.0;
  @override
  Widget build(BuildContext context) {
    scrWidth = MediaQuery.of(context).size.width;
    scrHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/landimg.jpg'),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
          color: Color(0xFF112E51),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       width: scrWidth/2-20,
          //       alignment: Alignment.topLeft,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Text('About Us :'),
          //         Text(' 1. Bhavesh Mahajan'),
          //         Text(' 2. Prashant Nane'),
          //         Text(' 3. Prof. Satish Kuchiwale'),
          //         // Text('About Us :'),
          //       ],
          //   ),
          //     ) ,
          //     Container(
          //       alignment: Alignment.topLeft,
          //       width: scrWidth/2-20,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //       children: [
          //         Text('About Us :'),
          //         Text('About Us :'),
          //         Text('About Us :'),
          //         Text('About Us :'),
          //         Text('About Us :'),
          //       ],
          //   ),
          //     )
          //   ],
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 1),
                    child: SizedBox(
                      width: scrWidth / 3,
                      child: Flexible(
                        child: Text(
                          'About us',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                            color: customColorScheme.background,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 1),
                    child: SizedBox(
                      width: scrWidth / 3,
                      child: Flexible(
                        child: Text(
                          '    Mahabhoomi is a blockchain-based solution for land registration developed by final year students, aiming to provide a secure, transparent, and efficient platform for land transactions. ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: customColorScheme.background,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //    Padding(
                  //      padding: const EdgeInsets.only(top:10.0),
                  //      child: Text(
                  //        ' 1. Bhavesh Mahajan',
                  //        style: TextStyle(
                  //          fontSize: 14.0,
                  //          color: Colors.grey[600],
                  //        ),
                  //      ),
                  //    ),
                  //    Text(
                  //        ' 2. Prashant Nane',
                  //        style: TextStyle(
                  //          fontSize: 14.0,
                  //          color: Colors.grey[600],
                  //        ),
                  //      ),
                  // Text(
                  //        ' 3. Prajyot Pawar',
                  //        style: TextStyle(
                  //          fontSize: 14.0,
                  //          color: Colors.grey[600],
                  //        ),
                  //      ),
                  //    Padding(
                  //      padding: const EdgeInsets.all(10.0),
                  //      child: Text(
                  //        ' Under Guidance of, \n \n 1. Prof. Satish Kuchiwale \n 2. Prof. Deepti Chandran',
                  //        style: TextStyle(
                  //          fontSize: 14.0,
                  //          color: Colors.grey[600],
                  //        ),
                  //      ),
                  //    ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 1),
                    child: Text(
                      'Contact Us :',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: customColorScheme.background,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: InkWell(
                      onTap: () {
                        launchUrl("https://github.com/prajyot-pawar");
                      },
                      child: Text(
                        ' 1. Bhavesh Mahajan',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFFFFFE7),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl("https://github.com/prajyot-pawar");
                    },
                    child: Text(
                      ' 2. Prashant Nane',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFFFFFFE7),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl("https://github.com/prajyot-pawar");
                    },
                    child: Text(
                      ' 3. Prajyot Pawar',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xFFFFFFE7),
                      ),
                    ),
                  ),
                  Text(
                    ' 4. Prof. Satish Kuchiwale (Mentor)',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFFFFFE7),
                    ),
                  ),
                  Text(
                    ' 5. Prof. Deepti Chandran (Co-ordinator)',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFFF1F1EE),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '© 2023 Government of Maharashtra',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.amberAccent,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Inspired by:',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.amberAccent,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    IconButton(
                      icon: Icon(
                        Icons.account_tree_outlined,
                        color: Colors.amberAccent,
                      ),
                      onPressed: () {
                        launchUrl("https://mahabhumi.gov.in/");
                        // Add Facebook page link here
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.account_balance_outlined,
                        color: Colors.amberAccent,
                      ),
                      onPressed: () {
                        launchUrl("https://mahabhumi.gov.in/");
                        // Add Twitter page link here
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
