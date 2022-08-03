import "package:flutter/material.dart";
import 'package:job_search/screens/jobs.dart';
import 'package:job_search/screens/model/job.dart';

class JobItem extends StatelessWidget {
  final JobList? jobItem;
  const JobItem({this.jobItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              companyLogo(context),
              SizedBox(width: 5),
              Text(jobItem!.company),
              Spacer(),
              Icon(Icons.bookmark_outline),
            ],
          ),
          Text(jobItem!.title, style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.pin_drop_outlined, color: Colors.red),
              SizedBox(width: 10),
              Text(jobItem!.location),
            ],
          )
        ],
      ),
    );
  }

  ClipRRect companyLogo(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
        ),
        width: MediaQuery.of(context).size.width * 0.08,
        //height: MediaQuery.of(context).size.height * 0.06,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(jobItem!.logoUrl),
        ),
      ),
    );
  }
}
