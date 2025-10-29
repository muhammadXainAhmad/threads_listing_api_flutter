import 'dart:math';
import 'package:flutter/material.dart';
import 'package:threads_listing_api/utils/utils.dart';
import 'package:threads_listing_api/widgets/comment_tile.dart';
import 'package:threads_listing_api/widgets/text.dart';

class PostScreen extends StatelessWidget {
  final String postTitle;
  final String postBody;
  const PostScreen({
    super.key,

    required this.postTitle,
    required this.postBody,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: whiteClr,
        appBar: AppBar(
          backgroundColor: whiteClr,
          title: MyText(
            text: "Posts",
            textClr: blackClr,
            textSize: 24,
            textWeight: FontWeight.w600,
          ),
          iconTheme: IconThemeData(size: 28, color: blackClr),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                MyText(
                  text: postTitle,
                  textClr: blackClr,
                  textSize: 18,
                  textWeight: FontWeight.w500,
                ),
                const SizedBox(height: 4),
                MyText(
                  text: postBody,
                  textClr: blackClr,
                  textSize: 16,
                  textWeight: FontWeight.w400,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            size: 28,
                            color: blueGreyClr,
                          ),
                        ),
                        MyText(
                          text: Random().nextInt(100).toString(),
                          textClr: blueGreyClr,
                          textSize: 14,
                          textWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.message_outlined, size: 26),
                          color: blueGreyClr,
                        ),
                        MyText(
                          text: Random().nextInt(100).toString(),
                          textClr: blueGreyClr,
                          textSize: 14,
                          textWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.file_upload_outlined,
                            size: 28,
                            color: blueGreyClr,
                          ),
                        ),
                        MyText(
                          text: Random().nextInt(100).toString(),
                          textClr: blueGreyClr,
                          textSize: 14,
                          textWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.zero,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(175, 35),
                      backgroundColor: greyClr,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        MyText(
                          text: "Most Relevant",
                          textClr: blackClr,
                          textSize: 14,
                          textWeight: FontWeight.w500,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: blackClr,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                CommentTile(),
                if (Random().nextInt(2) == 1)
                  Row(
                    children: [
                      const SizedBox(width: 70),
                      const Expanded(child: CommentTile()),
                    ],
                  ),
                if (Random().nextInt(2) == 1) const CommentTile(),
                SizedBox(height: 70),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(chatPics[9]),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: blackClr, fontSize: 16),
                        decoration: InputDecoration(
                          constraints: BoxConstraints(maxHeight: 50),
                          suffixIcon: Icon(
                            Icons.image_outlined,
                            color: blueGreyClr,
                            size: 26,
                          ),
                          filled: true,
                          fillColor: greyClr,
                          hintText: "Add Comment",
                          hintStyle: TextStyle(
                            color: blueGreyClr,
                            fontSize: 16,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: greyClr),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: blackClr),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
