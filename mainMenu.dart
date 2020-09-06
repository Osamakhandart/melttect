import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mainmenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            height: size.height * .1,
            width: size.width / 3,
            decoration: BoxDecoration(color: Color(0xFF817DC0)),
            child: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
          Container(
            height: size.height * .1,
            width: size.width / 3,
            decoration: BoxDecoration(color: Color(0xFF817DC0)),
            child: Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
          ),
          Container(
            height: size.height * .1,
            width: size.width / 3,
            decoration: BoxDecoration(color: Color(0xFF817DC0)),
            child: Icon(
              Icons.power_settings_new,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFC7B8F5),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/Cloud.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: size.width * .57,
                        height: size.height * .15,
                        child: Text(
                          "Welcome To Your Virtual Diagnosis app",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: size.width * .30,
                        height: size.height * .15,
                        child: Image(
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      primary: false,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/first');
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      "assets/images/quick detetction.png",
                                    ),
                                  ),
                                  Text(
                                    'Quick Detect',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xFF222B45)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                              child: Column(
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      "assets/images/comparison.png",
                                    ),
                                  ),
                                  Text(
                                    'Comparison',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xFF222B45)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      "assets/images/reminder.png",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Reminder',
                                    style: TextStyle(
                                        fontSize: 19, color: Color(0xFF222B45)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(
                                      "assets/images/report_genertion.png",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  Text(
                                    'Reports',
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xFF222B45)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
