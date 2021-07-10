import 'package:flutter/material.dart';
import 'package:flutter_sneaker_app/models/SneakerData.dart';
import 'package:flutter_sneaker_app/src/detalsPage.dart';
import 'package:flutter_sneaker_app/src/flutter_icons.dart';
import 'package:flutter_sneaker_app/widgets/clippath.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Sneaker> sneakerList = Sneaker.sneakerList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Catagories',
                    style: TextStyle(
                        fontSize: 44.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                  child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black54,
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 27, 0),
              child: Container(
                height: 350,
                child: ListView.builder(
                    itemCount: sneakerList.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => DetalsPage(
                                    sneaker: sneakerList[index],
                                  )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          child: Stack(
                            children: <Widget>[
                              ClipPath(
                                clipper: AppClipper(
                                    cornerSize: 30, diagonalHeight: 180),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  color: sneakerList[index].color,
                                  child: Stack(
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 50, 0, 0),
                                            child: Icon(
                                              (sneakerList[index].brand ==
                                                      'Nike')
                                                  ? FlutterIcons.nike
                                                  : (sneakerList[index].brand ==
                                                          'Adidas')
                                                      ? FlutterIcons.adidas
                                                      : FlutterIcons.converse,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Container(
                                              width: 150,
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 0, 0),
                                              child: Text(
                                                '${sneakerList[index].name}',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 0, 15),
                                            child: Text(
                                              '\$${sneakerList[index].price}',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        right: 0,
                                        bottom: 0,
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.greenAccent,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30))),
                                          child: Icon(
                                            Icons.add,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Hero(
                                tag: "hero${sneakerList[index].image}",
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(70, 0, 0, 70),
                                  width: MediaQuery.of(context).size.width * .7,
                                  height:
                                      MediaQuery.of(context).size.height * .7,
                                  child: Image(
                                      image: AssetImage(
                                          '${sneakerList[index].image}')),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Just for you',
                    style: TextStyle(
                        fontFamily: '',
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(fontSize: 15.0, color: Colors.blue),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ...sneakerList.map((data) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => DetalsPage(
                            sneaker: data,
                          )));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 6, 15, 6),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ]),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('${data.image}'),
                        height: 70,
                        width: 100,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * .40,
                              child: Text(
                                '${data.name}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              '${data.brand}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45,
                                  height: 1.5),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          '\$${data.price.toInt()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red[700]),
                        ),
                      )
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 1,
              )
            ]),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.compass_calibration,
                  ),
                ),
                title: Text('data')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                title: Text('data')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.backpack,
                ),
                title: Text('data')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                title: Text('data')),
          ],
        ),
      ),
    );
  }
}
