import 'package:flutter/material.dart';

class Imagemodel{

  var url;
  var title;
  var id;

  Imagemodel(this.url, this.title, this.id);

  Imagemodel.fromJson(Map<String, dynamic>parsedJson){

    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
    
  }
