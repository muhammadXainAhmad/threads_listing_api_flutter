import 'package:flutter/material.dart';
import 'package:threads_listing_api/utils/colors.dart';
import 'package:threads_listing_api/widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteClr,
      appBar: AppBar(
        backgroundColor: whiteClr,
        centerTitle: true,
        title: MyText(
          text: "Threads",
          textClr: blackClr,
          textSize: 22,
          textWeight: FontWeight.w600,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(Icons.add, color: blackClr, size: 32),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: GestureDetector(onTap: () {
              
            },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(chatPics[index]),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Full Name",
                          textClr: blackClr,
                          textSize: 16,
                          textWeight: FontWeight.w500,
                        ),
                        const SizedBox(height: 4),
                        MyText(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          textClr: Colors.blue.shade600,
                          textSize: 14,
                          textWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
