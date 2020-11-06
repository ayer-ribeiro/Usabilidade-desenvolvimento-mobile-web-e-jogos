import 'package:flutter/material.dart';

const MAX_NUMBER = 4;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(
        pageNumber: 1,
      ),
    );
  }
}

class Home extends StatelessWidget {
  final int pageNumber;
  Home({@required this.pageNumber}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getPageTitle(pageNumber)),
      ),
      body: Center(
        child: Column(children: [
          Container(
            child: Text(
              pageNumber.toString(),
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.all(25),
          ),
          getNavigatorButtons(
            context,
            pageNumber,
            MaterialPageRoute(
                builder: (context) => Home(
                      pageNumber: getNextPage(
                        pageNumber,
                      ),
                    )),
          )
        ]),
      ),
    );
  }
}

String getPageTitle(int pageNumber) {
  if (pageNumber == 1) {
    return "Primeira página";
  } else if (pageNumber == 2) {
    return "Segunda página";
  } else if (pageNumber == 3) {
    return "Terceira página";
  } else if (pageNumber == 4) {
    return "Quarta página";
  } else if (pageNumber == 5) {
    return "Quinta página";
  } else if (pageNumber == 6) {
    return "Sexta página";
  } else {
    return "Página $pageNumber";
  }
}

int getNextPage(int pagenumber) {
  if (pagenumber < MAX_NUMBER) {
    return pagenumber + 1;
  } else {
    return 1;
  }
}

Widget getNavigatorButtons(
  BuildContext context,
  int pageNumber,
  MaterialPageRoute nextRoute,
) {
  if (pageNumber == 1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
              context,
              nextRoute,
            );
          },
        ),
      ],
    );
  } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          child: Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        ElevatedButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
              context,
              nextRoute,
            );
          },
        ),
      ],
    );
  }
}
