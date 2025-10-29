import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threads_listing_api/provider/post_provider.dart';
import 'package:threads_listing_api/screens/post_screen.dart';
import 'package:threads_listing_api/utils/utils.dart';
import 'package:threads_listing_api/widgets/text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Consumer<PostsProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: blackClr, strokeWidth: 2),
            );
          }
          if (provider.error != null) {
            return Center(child: Text("Error: ${provider.error}"));
          }

          final users = provider.users;
          final posts = provider.posts;

          return RefreshIndicator(
            backgroundColor: whiteClr,
            color: blackClr,
            onRefresh: () => provider.fetchData(),
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                final user = users[index % users.length];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => PostScreen(
                                postTitle: post.title!,
                                postBody: post.body!,
                              ),
                        ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                            chatPics[Random().nextInt(20)],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: user.name!,
                                textClr: blackClr,
                                textSize: 16,
                                textWeight: FontWeight.w500,
                              ),
                              const SizedBox(height: 4),
                              MyText(
                                text: post.body!,
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
        },
      ),
    );
  }
}
