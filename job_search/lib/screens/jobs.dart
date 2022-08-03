import "package:flutter/material.dart";
import 'package:job_search/screens/job_details.dart';
import 'package:job_search/screens/job_item.dart';
import 'package:job_search/screens/model/job.dart';

class Jobs extends StatelessWidget {
  Jobs({Key? key}) : super(key: key);

  final jobList = JobList.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: jobList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return JobDetails(jobList[index]);
                    }),
                child: JobItem(jobItem: jobList[index]));
          },
          separatorBuilder: (_, index) {
            return SizedBox(width: 16);
          }),
    );
  }
}
