import 'package:facebook/widgets/video_post.dart';
import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text('Video',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: 28)),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  )),
            ]),
          ),
          Divider(),
          VideoPost(
              name: 'Abraham',
              ImgUrl:
                  'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1689383368716-X47BMRO7UU5Y1L8006RJ/25.jpg?format=750w',
              videoUrl:
                  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'),
          VideoPost(
              name: 'John',
              ImgUrl:
                  'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1691204890582-77AXUPJAJ7BL8MOWQZU0/CorporateHeadshot_1.jpg?format=750w',
              videoUrl: 'https://www.exit109.com/~dnn/clips/RW20seconds_1.mp4'),
          VideoPost(
              name: 'Sophia',
              ImgUrl:
                  'https://images.squarespace-cdn.com/content/v1/58caf536440243f6dba4550f/1691204869798-SDK5E49VFO6GI3NNWUUR/Corporate_1.jpg?format=750w',
              videoUrl:
                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4")
        ],
      ),
    );
  }
}
