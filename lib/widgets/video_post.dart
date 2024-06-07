import 'package:facebook/presentation/home_page.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoPost extends StatefulWidget {
  const VideoPost({
    super.key,
    required this.ImgUrl,
    required this.name,
    required this.videoUrl,
  });
  final String ImgUrl, name, videoUrl;

  @override
  State<VideoPost> createState() => _VideoPostState();
}

class _VideoPostState extends State<VideoPost> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    _videoPlayerController.initialize().then((value) {
      setState(() {});
      _videoPlayerController.play();
    });

    super.initState();
  }

  void PlayPause() {
    setState(() {
      if (_videoPlayerController.value.isPlaying) {
        _videoPlayerController.pause();
      } else {
        _videoPlayerController.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              leading:
                  CircleAvatar(backgroundImage: NetworkImage(widget.ImgUrl)),
              title: Text(
                widget.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              subtitle: const Row(
                children: [
                  Text('1d . '),
                  Icon(
                    Icons.south_america,
                    size: 16,
                  ),
                ],
              ),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ),
            GestureDetector(
              onTap: PlayPause,
              child: SizedBox(
                  width: double.infinity,
                  child: _videoPlayerController.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _videoPlayerController.value.aspectRatio,
                          child: VideoPlayer(_videoPlayerController),
                        )
                      : Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 10,
                          backgroundColor: Color.fromARGB(255, 45, 94, 255),
                          child: Icon(
                            Icons.thumb_up_alt,
                            color: Colors.white,
                            size: 12,
                          )),
                      Text(' 802',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                      Spacer(),
                      Text('195 comments',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54))
                    ],
                  ),
                  Divider(),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        LikeShareIconWidget(
                          icon: Icons.thumb_up_alt_outlined,
                          text: 'Like',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.mode_comment_outlined,
                          text: 'Comment',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.call_outlined,
                          text: 'Send',
                        ),
                        LikeShareIconWidget(
                          icon: Icons.near_me,
                          text: 'Share',
                        ),
                      ])
                ],
              ),
            ),
            Divider(
              thickness: 4,
              color: Colors.black26,
            ),
          ],
        ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
