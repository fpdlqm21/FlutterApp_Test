import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double verticalSize;
    late double horizonSize;
    bool over = false;
    bool isOver() {
      if (verticalSize * 0.1 < 100) {
        over = true;
        return over;
      } else {
        over = false;
        return over;
      }
    }

    verticalSize = MediaQuery.of(context).size.height;
    horizonSize = MediaQuery.of(context).size.width;

    Widget _textEidget() {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('환자 상태 분석',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
      );
    }

    Widget _statIcon() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/back.svg'),
              iconSize: isOver() ? verticalSize * 0.08 : 70),
          SizedBox(
            child: Text(
              '3건',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.red),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/front.svg'),
              iconSize: isOver() ? verticalSize * 0.08 : 70),
        ],
      );
    }

    Widget _stateImage() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 10.0,
          ),
          SvgPicture.asset(
            'assets/icons/bedsore.svg',
            width: 80,
            height: 80,
          ),
          SizedBox(
            width: 10.0,
          ),
          SvgPicture.asset(
            'assets/icons/temperature.svg',
            width: 80,
            height: 80,
          ),
          SvgPicture.asset(
            'assets/icons/sed_black.svg',
            width: 80,
            height: 80,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      );
    }

    return Container(
      decoration: BoxDecoration(
          color: Colors.pink.withOpacity(0.5),
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(30.0))),
      height: verticalSize * 0.45,
      width: horizonSize * 1.0,
      child: Column(children: [
        _textEidget(),
        _statIcon(),
        _stateImage(),
      ]),
    );
  }
}
