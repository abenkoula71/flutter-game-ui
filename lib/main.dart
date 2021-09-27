import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            appBar2,
            balance,
            card,
            trans,
          ],
        ),
      ),
    );
  }
}

Widget appBar2 = Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      Icon(
        Icons.notifications_outlined,
        color: Colors.white38,
      )
    ],
  ),
);

Widget balance = Container(
    padding: EdgeInsets.only(left: 30, top: 20),
    child: Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Balance',
            style: TextStyle(fontSize: 23, color: Colors.white38),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "547,000.00",
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    ));

Widget card = Container(
  padding: EdgeInsets.all(20),
  child: Center(
    child: Wrap(children: [
      Row(
        children: [card1, card2],
      )
    ]),
  ),
);

Widget card1 = Container(
  margin: EdgeInsets.all(10),
  child: Align(
    alignment: Alignment.topLeft,
    child: Container(
      width: 150,
      height: 190,
      decoration: BoxDecoration(
          color: Colors.amber[400], borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Icon(
                Icons.ac_unit,
                size: 40,
              ),
            )),
        Align(
            alignment: Alignment.topLeft,
            child: Container(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  children: [
                    Text(
                      "5,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Expense',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ))),
      ]),
    ),
  ),
);

Widget card2 = Container(
  margin: EdgeInsets.all(10),
  child: Align(
    alignment: Alignment.topLeft,
    child: Container(
      width: 150,
      height: 190,
      decoration: BoxDecoration(
          color: Colors.green[400], borderRadius: BorderRadius.circular(15)),
      child: Column(children: [
        Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Icon(
                Icons.gamepad_outlined,
                size: 40,
              ),
            )),
        Align(
            alignment: Alignment.topLeft,
            child: Container(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  children: [
                    Text(
                      "5,000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Expense',
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ))),
      ]),
    ),
  ),
);

Widget trans = Container(
  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
  width: double.infinity,
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30))),
  child: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                'Transaction',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                "See All",
                style: TextStyle(color: Colors.blue[400]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        tr1,
        tr2,
        tr3,
        tr4
      ],
    ),
  ),
);

Widget tr1 = Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.directions_car_sharp,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Car Purchase',
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              'Auto Loan',
              style: TextStyle(color: Colors.black38),
            )
          ],
        ),
      ),
      Container(
        child: Text('-250'),
      )
    ],
  ),
);

Widget tr2 = Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.purple[800], borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Car Purchase',
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              'Auto Loan',
              style: TextStyle(color: Colors.black38),
            )
          ],
        ),
      ),
      Container(
        child: Text('-250'),
      )
    ],
  ),
);

Widget tr3 = Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.gif,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Car Purchase',
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              'Auto Loan',
              style: TextStyle(color: Colors.black38),
            )
          ],
        ),
      ),
      Container(
        child: Text('-250'),
      )
    ],
  ),
);

Widget tr4 = Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue[500], borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.calendar_view_day_sharp,
          size: 30,
          color: Colors.white,
        ),
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Car Purchase',
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              'Auto Loan',
              style: TextStyle(color: Colors.black38),
            )
          ],
        ),
      ),
      Container(
        child: Text('2050'),
      )
    ],
  ),
);
