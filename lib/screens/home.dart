import 'package:flutter/material.dart';
import 'package:class_3/screens/second_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 70,),
            //
            Container(
              child: Column(children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  //decoration: BoxDecoration(
                  //color: isClicked == true ? Colors.cyan : Colors.black,
                  //borderRadius: BorderRadius.circular(5)),
                  child: Text("Welcom to"
                      //   ,
                      //   style: TextStyle(
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.w700,
                      //       color: Colors.white),
                      ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  //decoration: BoxDecoration(
                  //color: isClicked == true ? Colors.cyan : Colors.black,
                  //borderRadius: BorderRadius.circular(5)),
                  child: Text("Plan IT"
                      //   ,
                      //   style: TextStyle(
                      //       fontSize: 20,
                      //       fontWeight: FontWeight.w700,
                      //       color: Colors.white),
                      ),
                ),
              ]),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
                child: Column(
              children: [
                Text("Your Personal task management and planning solution"),
                InkWell(
                  onTap: () {
                    // setState(() {
                    //   isClicked = !isClicked;
                    // });
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context){
                    //       return SecondScreen();
                    //     })
                    // );

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondScreen()));
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      decoration: BoxDecoration(
                          color: isClicked == true ? Colors.cyan : Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Navigate",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
