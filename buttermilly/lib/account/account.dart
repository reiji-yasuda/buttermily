import 'package:flutter/material.dart';

class Accountprofiel extends StatelessWidget {
  const Accountprofiel({Key? key}) : super(key: key);

class _AccountprofielState extends State<Accountprofiel>{
  TextEditingController _textController = TextEditingController();
  bool _isEditing = false;


  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Colors.orange[100],
        actions: [
          // Icon(Icons.bell),
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
            //Padding(padding: const EdgeInsets.only(left: 30),
            // Column(
            //   children[
            //     Text('120',style: TextStyle(fontSize: 20.0),),
            //     Text('Followers',style: TextStyle(fontSize: 12.0)),
            //   ],
            // ),
            //Padding(padding: const EdgeInsets.only(left: 30),
            //Column(
            //  children[
            //     Text('120',style: TextStyle(fontSize: 20.0),),
            //     Text('Followers',style: TextStyle(fontSize: 12.0)),
            //   ],
            // ),
          ),
          Text('自己紹介: ${_textController.text}',
              style: TextStyle(fontSize: 18.0)),
          if(!_isEditing)
            ElevatedButton(
              onPressed: () {
                setState(){
                  _isEditing = true;
              };
              },
              child: Text('Edit'),
            ),
          if(_isEditing)
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: '自己紹介を入力してください'
              ),
            ),
            if(_isEditing)
            ElevatedButton(
              onPressed: (){
                setState(){
                  _isEditing = false;
                };
              },
              child: Text('finish'),
            )
        ],
      ),
      bottomNavigationBar: 
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.home,
              color: Colors.black,
            ),
            Icon(
              Icons.comment,
              color: Colors.black,
            ),
            Icon(
              Icons.account_balance,
              color: Colors.black,
            ),
      ]),
    );
  }
}
}
