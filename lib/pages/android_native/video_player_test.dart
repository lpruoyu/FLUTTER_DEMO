import 'package:flutter/material.dart';

import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: MStatefulWidget(),
      );
}

class MStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MState();
}

class _MState extends State<MStatefulWidget> {

  var videoPlayerController;

  var chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(
        'http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,
    );

    return Container(child: Chewie(
      controller: chewieController,
    ),);
  }

}
