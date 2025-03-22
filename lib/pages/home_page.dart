import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'package:frontend/constants/api.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void fetchData() async {
try{
  http.Response response = await http.get(Uri.parse(api));
  //var data = response.body;
  //data = json.decode(data);
  //print(data);
  print(response.body);
  }

  catch(e){
    print("Error is $e");
  }

  }

@override
  void initState() {
  fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
    );
  }
}