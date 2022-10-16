
import 'package:flutter/material.dart';
import 'package:on_pressed/on_pressed.dart';
import 'package:youtbe/vdopage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new utube(),
    );
  }
}

class utube extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    void _profile() {
      print("Clicked");
      Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => new vdo()),
      );
    }
    return Scaffold(
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
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>vdo()));
                        },
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
          body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [ Column(
                  children: [
                    InkWell(
                      onTap: _profile,
                      child: Card(
                        elevation : 3,
                        child: Column(
                          children: [
                            Image.network("https://i.ytimg.com/vi/OM1Y8LBHraY/hq720.jpg",fit: BoxFit.fill),
                            const ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/4/4f/Karikku_Media_Logo.png"),
                              ),
                              subtitle: Text("Karikku . 2.5M views . 20 hours ago"),
                              title:  Text(
                                'BHARATI APARTMENTS | Final Part | Karikku | Comedy',
                                maxLines: 1,
                                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, overflow: TextOverflow.ellipsis),
                              ),),
                          ],), ),
                    ),

                    /////////////////////////////////////////////

                    Card(
                      elevation : 3,
                      child: Column(
                        children: [
                          Image.network("https://i.ytimg.com/vi/dtNnr_s8nug/hq720.jpg",fit: BoxFit.fill),
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://webpack.js.org/icon-pwa-512x512.d3dae4189855b3a72ff9.png"),
                            ),
                            subtitle: Text("Simplified Coding . 2.5K views . 13 days ago"),
                            title:  Text(
                              'Android Jetpack Compose - Building a Complete App',
                              maxLines: 1,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, overflow: TextOverflow.ellipsis),
                            ),),
                        ],), ),

                    /////////////////////////////////////////////

                    Card(
                      elevation : 3,
                      child: Column(
                        children: [
                          Image.network("https://i.ytimg.com/vi/2NEBC7ZyV8s/hq720.jpg",fit: BoxFit.fill),
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/e/e5/Prick%C3%A4tarpucken.jpg"),
                            ),
                            subtitle: Text("Kido Channel . 3.1M views . 6 months ago"),
                            title:  Text(
                              'Top the most creatives science projects part #3 Sunfarming ! DIY mini tractor trolley heavy truck',
                              maxLines: 1,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, overflow: TextOverflow.ellipsis),
                            ),) ],), ),


                    /////////////////////////////////////////////

                    Card(
                      elevation : 3,
                      child: Column(
                        children: [
                          Image.network("https://i.ytimg.com/vi/dnWqL9uxi-I/hq720.jpg",fit: BoxFit.fill),
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://internethelpline.in/wp-content/uploads/2020/10/M4Tech.jpg"),
                            ),
                            subtitle: Text("M4Tech . 4.3M views . 3 years ago"),
                            title:  Text('How To Make Hydraulic Robotic Arm | ഒരു കുഞ്ഞി ക്രെയിൻ ഉണ്ടാക്കിയാലോ | M4 Tech',
                              maxLines: 1,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, overflow: TextOverflow.ellipsis),
                            ),),
                        ],), ),

                    /////////////////////////////////////////////



                    Card(
                      elevation : 3,
                      child: Column(
                        children: [
                          Image.network("https://i.ytimg.com/vi/nChQ-taoNjs/hqdefault.jpg",fit: BoxFit.fill),
                          const ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("https://i.postimg.cc/4xK9N6nD/index.png"),
                            ),
                            subtitle: Text("Aslam Perumani . 11K views . 6 years ago"),
                            title:  Text(
                              'All Kinds of China Mobiles Master Code 2016',
                              maxLines: 1,
                              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, overflow: TextOverflow.ellipsis),
                            ),),
                        ],), ),

                    /////////////////////////////////////////////






            ],
          ),

     ],),
    ),
    ),
    );

  }


}


