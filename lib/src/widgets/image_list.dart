import 'package:flutter/material.dart';
import '../models/images_model.dart';

class Imagelist extends StatelessWidget{

  final List<Imagemodel> images;
  
  Imagelist(this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context , int index){

        return buildImage(images[index]);

      }
    );
  }

  Widget buildImage(Imagemodel image){
   
   return Container(

     decoration: BoxDecoration(

       border: Border.all(color:Colors.black12)

     ),
   padding: EdgeInsets.all(20.0),
   margin: EdgeInsets.all(20.0),
   child : Column(
     children : <Widget>[
       Padding(
         child :Image.network(image.url),
         padding: (EdgeInsets.only(
           bottom: 10.0
         )),
       ),

       Text(image.title)
     ]
   )
    
   );


  }
}