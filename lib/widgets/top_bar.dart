import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.screenSize}) : super(key: key);
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 0.03 * screenSize.width,
        right: 0.03 * screenSize.width,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.filter_list_outlined,
                size: 0.03 * screenSize.height,
                color: const Color(0xff4636AA).withOpacity(0.8),
              )),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xff4636AA).withOpacity(0.5), width: 2)),
            height: 0.05 * screenSize.height,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/user.jpg",
                )),
          )
        ],
      ),
    );
  }
}
