import 'package:flutter/material.dart';
import 'package:flutter_sneaker_app/src/HomePage.dart';

class GetStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/start.png'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              left: MediaQuery.of(context).size.width * .25,
              child: InkWell(
                onTap: () {
                  return Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (BuildContext context, _, __) =>
                          HomePage()));
                },
                child: Center(
                  child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.blue[600],
                          gradient: LinearGradient(
                              colors: [Colors.blue[600], Colors.blue[200]])),
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Get Start',
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
