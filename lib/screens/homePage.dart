import 'package:flutter/material.dart';
import 'package:kidsaloon/screens/storiesPage.dart';
import 'package:kidsaloon/screens/videosPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("KidSaloon"),),
      body: _bodyWidget(screenSize,context),
    );
  }

  _bodyWidget(Size screenSize,BuildContext context) {
    return Center(
      child: Column(
       
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.amber,
              height: screenSize.height/2.5,
              width: screenSize.width/1.2,
              child: InkWell(
                child:Text("A"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => VideosPage())));
                },
              ),
            ),
          ),
       Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.cyan,
              height: screenSize.height/2.5,
              width: screenSize.width/1.2,
              child: InkWell(
                child:Text("B"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => StoriesPage())));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}