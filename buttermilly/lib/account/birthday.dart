import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Birthday extends StatelessWidget {
  String dateText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(1950, 1, 1),
                    maxTime: DateTime(2023, 12, 31), onConfirm: (date) {
                  setState({
                    dateText = '${date.year}年${date.month}月${date.day}日',
                  });
                }, currentTime: DateTime.now(), locale: LocaleType.jp);
              },
              child: const Text(
                '日付を選択',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Text(
              dateText,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
