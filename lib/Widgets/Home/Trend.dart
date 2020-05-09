import 'package:flutter/material.dart';

class Trend extends StatefulWidget {
  Trend({Key key}) : super(key: key);

  @override
  _TrendState createState() => _TrendState();
}

class _TrendState extends State<Trend> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 20),
          child: Row(
            children: <Widget>[
              //Border
              Container(
                height: 20,
                width: 4,
                margin: EdgeInsets.only(left: 10),
                color: Colors.black,
              ),
              //Cat Title
              Text(
                'المتصدر',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(0),
          height: 150,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 200,
                margin: EdgeInsets.only(right: 20, left: 5),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'مسودة دستور الجزائر.. أبرز التعديلات وردود الفعل',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
