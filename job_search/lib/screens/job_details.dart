import 'package:flutter/material.dart';
import 'package:job_search/screens/job_item.dart';
import 'package:job_search/screens/model/job.dart';

class JobDetails extends StatefulWidget {
  final JobList details;
  JobDetails(this.details);

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
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
          child: Image.asset(widget.details.logoUrl),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.75,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
                thickness: 3, color: Colors.grey, indent: 150, endIndent: 150),
            SizedBox(height: 30),
            Row(
              children: [
                companyLogo(context),
                SizedBox(width: 15),
                Text(widget.details.company, style: TextStyle(fontSize: 25)),
                Spacer(),
                Icon(Icons.bookmark_outline),
                Icon(Icons.more_horiz, size: 30)
              ],
            ),
            SizedBox(height: 20),
            Text(widget.details.title, style: TextStyle(fontSize: 30)),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.pin_drop, color: Colors.red),
                SizedBox(width: 5),
                Text(widget.details.location, style: TextStyle(fontSize: 15)),
                Spacer(),
                Icon(Icons.more_time, color: Colors.red),
                SizedBox(width: 5),
                Text("Full Time", style: TextStyle(fontSize: 15)),
              ],
            ),
            SizedBox(height: 30),
            Text("Requirement", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            ...widget.details.req
                .map((e) => Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("\u2022 ", style: TextStyle(fontSize: 30)),
                              Flexible(
                                child: Text(e, style: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
                .toList(),
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.teal,
            //     borderRadius: BorderRadius.circular(25.0),
            //   ),
            //   child: Text("Apply Now"),
            // ),
            Center(
                child: ElevatedButton(
                    onPressed: () => null,
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                    child: Text("Apply Now")))
          ],
        ));
  }
}
