import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:buttermilly/followers_page/followers_page.dart';

class GroupAccountPage extends StatefulWidget {
  const GroupAccountPage({Key? key}) : super(key: key);

  @override
  State<GroupAccountPage> createState() => _GroupAccountPageState();
}

class _GroupAccountPageState extends State<GroupAccountPage> {
  Future<String> getText() async {
    await Future.delayed(const Duration(seconds: 2));
    return '10pt';  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0,),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fgahag.net%2Fimg%2F201511%2F28s%2Fgahag-0030358547-1.jpg&f=1&nofb=1&ipt=15357669fbb80a8c8880e52274b20dae92b5f93968511ae0c45efb4ebf980b23&ipo=images')
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
            padding: const EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
                image: DecorationImage(
                          image: AssetImage('image/IMG_2312.jpg'),
                          fit: BoxFit.cover,
                          ),
              ),
              height: 180,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              '私たちなかよし4人家族です！よろしくお願いします！',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
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
                  child: FutureBuilder<String>(
                    future: getText(),
                    builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return Text(
                            snapshot.data ?? '0pt',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }
                      } else {
                        // While the future is running, show a loading indicator
                        return Text('0pt', style: TextStyle(fontSize: 50,
                              fontWeight: FontWeight.bold,),);
                      }
                    },
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
                image: DecorationImage(
                  image: AssetImage(
                          'image/fireflower.jpg',
                        ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 550,
            ),
          )
        ],
      ),
    );
  }
}
