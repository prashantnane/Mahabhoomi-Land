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

  double scrHeight= 00.0;

  double scrWidth= 00.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '© 2023 Government of Maharashtra',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[600],
            ),
          ),
          Row(
            children: [
              Text(
                'Follow us on:',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(Icons.facebook),
                onPressed: () {
                  // Add Facebook page link here
                },
              ),
              IconButton(
                icon: Icon(Icons.account_balance_outlined),
                onPressed: () {
                  // Add Twitter page link here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
