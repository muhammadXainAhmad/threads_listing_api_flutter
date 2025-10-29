import 'dart:math';

import 'package:flutter/material.dart';
import 'package:threads_listing_api/utils/utils.dart';
import 'package:threads_listing_api/widgets/text.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(chatPics[Random().nextInt(20)]),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      MyText(
                        text: "Full Name",
                        textClr: blackClr,
                        textSize: 15,
                        textWeight: FontWeight.w500,
                      ),
                      const SizedBox(width: 10),
                      MyText(
                        text:
                            "${months[Random().nextInt(12)]} ${(Random().nextInt(30) + 2).toString()}",
                        textClr: blueGreyClr,
                        textSize: 14,
                        textWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  MyText(
                    text: "Lorem ipsum dolor sit amet",
                    textClr: blackClr,
                    textSize: 14,
                    textWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 24,
                        color: blueGreyClr,
                      ),
                      SizedBox(width: 5),
                      MyText(
                        text: Random().nextInt(100).toString(),
                        textClr: blueGreyClr,
                        textSize: 14,
                        textWeight: FontWeight.w400,
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        size: 24,
                        color: blueGreyClr,
                      ),
                      SizedBox(width: 5),
                      MyText(
                        text: Random().nextInt(100).toString(),
                        textClr: blueGreyClr,
                        textSize: 14,
                        textWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
