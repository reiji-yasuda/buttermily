import 'package:flutter/material.dart';

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
            Icon(Icons.menu),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(top: 5.0)),
            //Text(),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  CircleAvatar(
                    radius: 30.0,
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
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => ()));
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const Padding(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
          ],
        ));
  }
}
