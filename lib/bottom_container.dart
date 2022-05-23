import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BottomContainer extends StatelessWidget {
  final _today = DateTime.now();
  final DateFormat formatter = DateFormat('yyyy.MM.dd');
  BottomContainer({Key? key}) : super(key: key);

  Widget _titleWidget() {
    var today = formatter.format(_today);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('현재 현황',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
          Text(today)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late double verticalSize;
    late double horizonSize;

    verticalSize = MediaQuery.of(context).size.height;
    horizonSize = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleWidget(),
        Column(
          children: [
            SizedBox(height: 30.0),
            Text(
              '엎드림',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 50.0),
            Text('경과시간', style: TextStyle(fontSize: 18.0))
          ],
        )
      ],
    );
  }
}
