
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


void main(){
  runApp(vdo());
}



final _controller = YoutubePlayerController(
    params: YoutubePlayerParams(
        autoPlay: true,
        showFullscreenButton: true,
        showControls: true
    ),
    initialVideoId: 'OM1Y8LBHraY'

);



class vdo extends StatelessWidget{
  const vdo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 5,
                pinned: false,
                floating: true,
                scrolledUnderElevation: 5,
                shadowColor: Colors.black54,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 9, top: 17, bottom: 17),
                  child: Image.network("https://pngimg.com/uploads/youtube/youtube_PNG7.png",fit: BoxFit.fill),
                ),

                actions: [

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.cast), color: Colors.black54,),

                  //Notification
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined), color: Colors.black54,),
                  // Navigate to the Search Screen
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search), color: Colors.black54,),

                  IconButton(
                    onPressed: () {},
                    icon : Image.network("https://i.postimg.cc/4xK9N6nD/index.png"),
                    padding: EdgeInsets.only(left: 0, bottom: 13, right: 0, top: 13),
                  ),
                ],

              ),
            ];
          },
          body: YoutubePlayerIFrame(
                    controller: _controller,
                    aspectRatio: 16 / 9,
                  ),
          ),
          ),
    );

  }


}






















//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(vdo());
// }
//
//
// class vdo extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return <Widget>[
//               SliverAppBar(
//                 elevation: 5,
//                 pinned: true,
//                 floating: true,
//                 scrolledUnderElevation: 5,
//                 shadowColor: Colors.black54,
//                 forceElevated: innerBoxIsScrolled,
//                 backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
//                 leading: Padding(
//                   padding: const EdgeInsets.only(left: 9, top: 17, bottom: 17),
//                   child: Image.network("https://pngimg.com/uploads/youtube/youtube_PNG7.png",fit: BoxFit.fill),
//                 ),
//
//                 actions: [
//
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.cast), color: Colors.black54,),
//
//                   //Notification
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.notifications_outlined), color: Colors.black54,),
//                   // Navigate to the Search Screen
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(Icons.search), color: Colors.black54,),
//
//                   IconButton(
//                     onPressed: () {},
//                     icon : Image.network("https://i.postimg.cc/4xK9N6nD/index.png"),
//                     padding: EdgeInsets.only(left: 0, bottom: 13, right: 0, top: 13),
//                   ),
//
//                 ],
//
//
//               ),
//             ];
//           },
//           body: Container()
//         ),
//       ),
//     );
//
//   }
//
//
// }


