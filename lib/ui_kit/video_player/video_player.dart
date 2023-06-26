// import 'package:flutter/material.dart';
// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/services.dart';
// import 'package:video_player/video_player.dart';

// class CHIVideoPlayer extends StatefulWidget {
//   const CHIVideoPlayer({required this.url, Key? key}) : super(key: key);

//   final String url;

//   @override
//   State<CHIVideoPlayer> createState() => _CHIVideoPlayerState();
// }

// class _CHIVideoPlayerState extends State<CHIVideoPlayer> {
//   late FlickManager vController;

//   @override
//   void initState() {
//     super.initState();
//     initializeVideoController();
//   }

//   initializeVideoController() {
//     vController = FlickManager(
//         videoPlayerController: VideoPlayerController.network(widget.url));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlickVideoPlayer(
//       flickManager: vController,
//       preferredDeviceOrientation: const [
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ],
//     );
//   }
// }
