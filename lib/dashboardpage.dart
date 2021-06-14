import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    //navigation and image
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu,color: Colors.black,),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 6.0,
                          spreadRadius: 4.0,
                          offset: Offset(0.0,3.0)
                        )
                      ],
                      color: Color(0xFFC6E7FE),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/tuxedo.png'),
                        fit: BoxFit.contain
                      )
                    ),
                  )
                ],
              ),
          ),
          Padding(
              padding: const EdgeInsets.only(left:15.0),
              child:Text(
                'SEARCH FOR',
                // style: GoogleFonts.notoSans(
                //   fontWeight: FontWeight.w800, fontSize: 27.0),
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: 27.0
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child:Text(
              'RECIPES',
              style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 27.0
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Container(
                  padding: EdgeInsets.only(left: 5.0),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        // hintStyle: GoogleFonts.notoSans(fontSize: 14.0),
                        border: InputBorder.none,
                        fillColor: Colors.grey.withOpacity(0.5),
                        prefixIcon: Icon(Icons.search, color: Colors.grey)),
                  ))),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
