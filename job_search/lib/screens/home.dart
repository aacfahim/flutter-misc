import "package:flutter/material.dart";
import 'package:job_search/screens/home_appbar.dart';
import 'package:job_search/screens/job_search.dart';
import 'package:job_search/screens/jobs.dart';
import 'package:job_search/screens/tag_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          //backgroundColor: Colors.white.withOpacity(0.95),
          body: Stack(children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue.withOpacity(0.08),
                      height: double.infinity,
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey.withOpacity(0.15),
                      height: double.infinity,
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
              child: Column(
                children: [
                  HomeAppBar(),
                  JobSearch(),
                  TagList(),
                  Jobs(),
                ],
              ),
            )
          ])),
    );
  }
}
