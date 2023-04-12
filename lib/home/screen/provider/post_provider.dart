import 'package:flutter/cupertino.dart';
import 'package:untitled18/utiles/api_helper.dart';

class Post extends ChangeNotifier{
  Future<String> Chenge(String name,String job) async {
    ApiHelper apiHelper=ApiHelper();
    String msg = await apiHelper.apicall(name, job);
    return msg;

  }
}

//
// lines (11 sloc)  326 Bytes
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:post_api_caliing1/helper/apihelper.dart';
//
// class Homeprovider extends ChangeNotifier
// {
//   Future<String> createJob(String name, String job)
//   async {
//     ApiHelper apiHelper = ApiHelper();
//     String msg = await apiHelper.postApiOfJob(name, job);
//     return msg;
//   }
//
// }