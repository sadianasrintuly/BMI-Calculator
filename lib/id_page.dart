import 'package:flutter/material.dart';
import 'second_page.dart';
class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  State<CoverPage> createState() => _CoverPageState();
}

class _CoverPageState extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: ClipOval(
                  child: Image.asset('assets/p.jpeg',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                )
            ),

            Center(child: Text("\n"
                "Name: Sadia Nasrin Tuly",
                style: TextStyle(fontSize: 17, color: Colors.pink),
              ),
            ),

            Center(
              child: Text("\n"
                    "ID: 1111001",
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
            ),

            Center(
              child: Text("\n"
                    "Level-4/Term-II",
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
            ),

            Center(
              child: Text("\n"
                    "Dept. of CSE",
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
            ),

            Center(
              child: Text("\n"
                    "BAIUST",
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
            ),



            Center(
              child: Text("\n"
                  "Course: Flutter"
                "\n",
                style: TextStyle(fontSize: 16, color: Colors.pink),
              ),
            ),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
            },
              child: Center(
                child:
                Text('Next Page',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}