import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_sneaker_app/models/SneakerData.dart';
import 'package:flutter_sneaker_app/widgets/clippath.dart';

class DetalsPage extends StatefulWidget {
  final Sneaker sneaker;
  DetalsPage({this.sneaker});
  @override
  _DetalsPageState createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Categories'),
        backgroundColor: widget.sneaker.color,
        elevation: 0,
      ),
      backgroundColor: widget.sneaker.color,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: AppClipper(cornerSize: 0, diagonalHeight: 230),
            child: Container(
              padding: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      '${widget.sneaker.name}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 32.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 8, 0, 0),
                    child: Row(
                      children: <Widget>[
                        RatingBar.builder(
                            itemCount: 5,
                            initialRating: 3,
                            maxRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemSize: 15,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            }),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '124 review',
                          style: TextStyle(fontSize: 20, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 8, 5, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${widget.sneaker.description}',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Spacer(),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'See more',
                            style:
                                TextStyle(color: Colors.blue, fontSize: 15.0),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Colors Option',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Row(
                      children: <Widget>[
                        buildColor(Colors.amber),
                        buildColor(Colors.blue),
                        buildColor(Colors.red),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: MediaQuery.of(context).size.width * .9,
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 10,
                        spreadRadius: 1,
                      )
                    ],
                    color: widget.sneaker.color,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Price',
                            style: TextStyle(
                                fontSize: 25.0, color: Colors.black45),
                          ),
                          Text(
                            '\$${widget.sneaker.price.toInt()}',
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width * .3,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 10,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Add Cart',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: widget.sneaker.color),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Hero(
              tag: "hero${widget.sneaker.image}",
              child: Image(
                image: AssetImage('${widget.sneaker.image}'),
                width: MediaQuery.maybeOf(context).size.width * .8,
                height: MediaQuery.maybeOf(context).size.height * .2,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildColor(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: color,
        ),
      ),
    );
  }
}
