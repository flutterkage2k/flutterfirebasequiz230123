import 'package:flutter/material.dart';

class LifeLine_Drawer extends StatefulWidget {
  const LifeLine_Drawer({Key? key}) : super(key: key);

  @override
  State<LifeLine_Drawer> createState() => _LifeLine_DrawerState();
}

class _LifeLine_DrawerState extends State<LifeLine_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "LifeLine",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
                        child: Icon(Icons.people, size: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Audience\n Poll",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
                        child: Icon(Icons.people, size: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Audience\n Poll",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
                        child: Icon(Icons.people, size: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Audience\n Poll",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.purpleAccent),
                        child: Icon(Icons.people, size: 32, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Audience\n Poll",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black12,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
