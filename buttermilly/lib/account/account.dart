import 'package:buttermilly/account/account_edit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:buttermilly/bottombar.dart';

class Accountprofiel extends StatelessWidget {
  Accountprofiel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final textwidth = size.width;
    final textheight = size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.orange[100],
        actions: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text(),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 40.0, top: 200.0),
            ),
            CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/Ellipse11.png'),
            ),
            SizedBox(
              width: 40.0,
            ),
            Column(
              children: [
                Text(
                  '120',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text('Followers', style: TextStyle(fontSize: 17.0)),
              ],
            ),
            SizedBox(
              width: 30.0,
            ),
            Column(
              children: [
                Text(
                  '120',
                  style: TextStyle(fontSize: 30.0),
                ),
                Text('Followers', style: TextStyle(fontSize: 17.0)),
              ],
              //Text(),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: textwidth / 2 - 100),
              ),
              SizedBox(
                width: textwidth / 5.0,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AccountEdit()));
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
              ),
              SizedBox(
                width: textwidth / 5.0,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
                  },
                  child: const Text(
                    'Share',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('所属中のグループ'),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/Ellipse11.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'グループ名(3)',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        //Navigator.push(context,MaterialPageRoute(builder: (context) => ()));
                      },
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('image/Ellipse11.png'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'グループ名(3)',
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          //Navigator.push(context,MaterialPageRoute(builder: (context) => ()));
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
