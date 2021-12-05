import 'package:bachelorprojekt_joblist/screens/joblist_search_screen.dart';
import 'package:bachelorprojekt_joblist/screens/joblist_topic_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobList',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: JobListSearchScreen(),
      //home: JobListTopicScreen(),
    );
  }
}



