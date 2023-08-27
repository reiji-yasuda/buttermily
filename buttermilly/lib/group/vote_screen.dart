import 'package:flutter/material.dart';

class VoteScreen extends StatefulWidget {
  const VoteScreen({Key? key}) : super(key: key);

  @override
  State<VoteScreen> createState() => _VoteScreenState();
}

class _VoteScreenState extends State<VoteScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Color _containerBorderColor1;
  late Color _containerBorderColor2;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _containerBorderColor1 = Colors.grey;
    _containerBorderColor2 = Colors.grey;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _changeBorderColor(int containerNumber) {
    setState(() {
      if (containerNumber == 1) {
        _containerBorderColor1 = Colors.blue;
        _containerBorderColor2 = Colors.grey;
      } else if (containerNumber == 2) {
        _containerBorderColor1 = Colors.grey;
        _containerBorderColor2 = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'VOTE',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: GestureDetector(
                onTap: () => _changeBorderColor(
                    1), // Call the function to change border color of container 1
                child: Container(
                  width: 280,
                  height: 390,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: _containerBorderColor1, width: 4),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: GestureDetector(
                onTap: () => _changeBorderColor(
                    2), // Call the function to change border color of container 2
                child: Container(
                  width: 280,
                  height: 390,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: _containerBorderColor2, width: 4),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'VOTE',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VoteScreen(),
  ));
}
