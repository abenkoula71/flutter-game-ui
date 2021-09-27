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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          appBar,
          SizedBox(
            height: 30,
          ),
          welcomPage,
          SizedBox(
            height: 20,
          ),
          searchBar,
          SizedBox(
            height: 20,
          ),
          boxFavori,
          SizedBox(
            height: 30,
          ),
          categ,
        ],
      ),
    );
  }
}

Widget appBar = Container(
  margin: EdgeInsets.only(top: 70),
  padding: EdgeInsets.only(left: 20, right: 10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.blue[50], borderRadius: BorderRadius.circular(20)),
          child: Icon(
            Icons.menu,
            color: Colors.blueAccent,
          ),
        ),
        onTap: () {},
      ),
      Container(
        child: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("img/1.jpg"), fit: BoxFit.fill)),
            )
          ],
        ),
      )
    ],
  ),
);

Widget welcomPage = Align(
    alignment: Alignment.topLeft,
    child: Container(
      padding: EdgeInsets.only(left: 40),
      child: Column(
        children: [
          Text(
            "Welcome Back",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'Creayive Mints',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ));

Widget searchBar = Container(
  padding: EdgeInsets.symmetric(horizontal: 30),
  width: double.infinity,
  height: 50,
  child: TextFormField(
    decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        labelText: 'search ',
        hintText: "search...",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    onSaved: (String? value) {
      print('Value for field index saved as "value"');
    },
  ),
);

Widget boxFavori = Center(
    child: Wrap(
  children: [box1, box2, box3, box4],
));

Widget box1 = Container(
  padding: EdgeInsets.only(
    top: 40,
  ),
  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.amber,
  ),
  child: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 7, color: Colors.white)),
          child: Icon(
            Icons.attach_money_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Transction',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                child: Text(
                  "7 Items",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ),
);

Widget box2 = Container(
  padding: EdgeInsets.only(
    top: 40,
  ),
  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.redAccent,
  ),
  child: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 7, color: Colors.white)),
          child: Icon(
            Icons.card_giftcard_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Transction',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                child: Text(
                  "7 Items",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ),
);

Widget box3 = Container(
  padding: EdgeInsets.only(
    top: 40,
  ),
  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.yellow[400],
  ),
  child: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 7, color: Colors.white)),
          child: Icon(
            Icons.star_border_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Transction',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                child: Text(
                  "7 Items",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ),
);

Widget box4 = Container(
  padding: EdgeInsets.only(
    top: 40,
  ),
  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  width: 150,
  height: 150,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: Colors.purple[400],
  ),
  child: Align(
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 7, color: Colors.white)),
          child: Icon(
            Icons.format_align_justify_outlined,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Container(
                child: Text(
                  'Transction',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                child: Text(
                  "7 Items",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        )
      ],
    ),
  ),
);

Widget categ = Container(
  padding: EdgeInsets.symmetric(horizontal: 30),
  child: Column(
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Container(
          child: Text(
            "choose a categories",
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          catee,
          catee,
        ],
      )
    ],
  ),
);

Widget catee = Container(
  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1, color: Colors.black26)),
  child: Row(
    children: [
      Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue[200]),
        child: Icon(
          Icons.food_bank,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        child: Column(
          children: [
            Text(
              'Branch',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              'Services',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
      )
    ],
  ),
);
