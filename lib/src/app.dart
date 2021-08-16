import 'package:flutter/material.dart';
import 'package:practice/src/widgets/image_list.dart';
import 'models/images_model.dart';
import 'package:http/http.dart';
import 'dart:convert';





class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Appstate();
  }


}


class Appstate extends State<App>{
 int counter = 0;
 List<Imagemodel>images=[];
 
 void fetchImage()async{

   counter ++;

   var response = await get("http://jsonplaceholder.typicode.com/photos/$counter");
   var imagemodel = Imagemodel.fromJson(json.decode(response.body));

   setState(() {
     images.add(imagemodel);
   });
 }
  

 
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: Scaffold(

        backgroundColor: Color(0xffC4A484),

        body: Imagelist(images),

        floatingActionButton: FloatingActionButton(

          backgroundColor: Color(0xff000000),

          child: Icon(Icons.add_a_photo),

          onPressed: fetchImage,
        ),

        appBar : AppBar(

          backgroundColor: Color(0xffFFD580),

          title : Text('Lets see some images!'),
        ),
      ),
    );
  }



}