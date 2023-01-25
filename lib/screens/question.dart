import 'package:flutter/material.dart';
import 'package:flutterfirebasequiz230123/widgets/life.line_sidebar.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'Rs.20,000',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        drawer: LifeLine_Drawer(),
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Quit Game",
            style: TextStyle(fontSize: 27),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 12,
                    backgroundColor: Colors.green,
                  ),
                  Center(
                    child: Text(
                      "46",
                      style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.all(17),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Question",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.black12.withOpacity(0.8), borderRadius: BorderRadius.circular(35)),
              child: Text(
                "A. c++",
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.black12.withOpacity(0.8), borderRadius: BorderRadius.circular(35)),
              child: Text(
                "B. Flutter",
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.black12.withOpacity(0.8), borderRadius: BorderRadius.circular(35)),
              child: Text(
                "C. Photoshop",
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(14),
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 5),
              decoration: BoxDecoration(color: Colors.black12.withOpacity(0.8), borderRadius: BorderRadius.circular(35)),
              child: Text(
                "D. Enginnering",
                style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
