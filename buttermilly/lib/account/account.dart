import 'package:flutter/material.dart';

class InstagramUi extends StatelessWidget {
  const InstagramUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.orange[100],
        actions: [
          Icon(Icons.bell),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(15.0)),
          Text(
            'haruto',
            style: TextStyle(fontSize: 25.0),
          ),
          Padding(padding: const EdgeInsets.only(top: 5.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // CircleAvatar(
            //   radius: 30,
            //   backgroundColor: Colors.white,
            //   backgroundImage: AssetImage(),
            //   ),
          ),
        ],
      ),
    );
  }
}
