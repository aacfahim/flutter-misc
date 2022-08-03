import "package:flutter/material.dart";

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  List<String> tags = [
    " All ",
    "⚡ Popular ",
    "⭐ Featured ",
  ];

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: MediaQuery.of(context).size.height * .055,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: tags.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: selected == index
                      ? null
                      : Border.all(
                          color: Colors.blue.withOpacity(0.4), width: 1),
                  color: selected == index
                      ? Colors.blue.withOpacity(0.3)
                      : Colors.white,
                ),
                child: Text(
                  "${tags[index]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 10);
          }),
    );
  }
}
