import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:buttermilly/bottombar.dart';

class Accountprofiel extends StatelessWidget {
  Accountprofiel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.orange[100],
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
          ),
          Icon(Icons.menu),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text(),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('image/Ellipse11.png'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      '120',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text('Followers', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  children: [
                    Text(
                      '120',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text('Followers', style: TextStyle(fontSize: 12.0)),
                  ],
                ),
              ]),
          Row(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => ()));
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
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => ()));
                },
                child: const Text(
                  'Share',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('所属中のグループ'),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/Ellipse11.dart'),
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
            height: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('image/Ellipse11.dart'),
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
