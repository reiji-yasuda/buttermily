import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:buttermilly/followers_page/followers_page.dart';

class GroupAccountPage extends StatefulWidget {
  const GroupAccountPage({Key? key}) : super(key: key);

  @override
  State<GroupAccountPage> createState() => _GroupAccountPageState();
}

class _GroupAccountPageState extends State<GroupAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const CircleAvatar(
                  radius: 50,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 60),
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Family',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text('@familygroup'),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.mode_edit,
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              height: 180,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              maxLines: 1,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: '124',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowersPage()));
                          },
                      ),
                    ]),
              ),
              RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Followers',
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FollowersPage()));
                          },
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 60),
                child: Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    '350pt',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Color(0xFF5FE230)),
                  child: const Text(
                    'USE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 380,
                child: Text(
                  'Archive',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              height: 550,
            ),
          )
        ],
      ),
    );
  }
}
