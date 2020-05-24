import 'package:flutter/material.dart';

import './dummy.dart/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple, 
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: (){},
                  ),
                  
                ],
              ),
            ),
            
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: TabBar(
              //labelPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: Colors.white,
              indicatorWeight: 5.0,
              unselectedLabelStyle: TextStyle(
                fontSize: 12
              ),
              tabs: <Widget>[
                Tab(
                  child: Text('Designers',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
                Tab(
                  child: Text('Category',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
                Tab(
                  child: Text('Attention',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                    ),
                  ),
                ),
              ],

              ),
              ),
            ),
            ),
            body: TabBarView(
              children: <Widget>[
                HomePage(),
                HomePage(),
                HomePage(),
              ],
            ),
          ),
        ),
      );
    
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 15, left:25, right: 25),   // l-25 : r-25
        child: ListView(
          scrollDirection: Axis.vertical,
          children: cards.map((tx){
            return Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15, right: 10),
                margin: EdgeInsets.only(bottom: 10),
                //color: Colors.blue,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: tx.cColor,
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 110,
                    width: MediaQuery.of(context).size.width  - 150,  // width - 150
                    //color: Colors.amber,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(
                                    image: AssetImage(tx.imageUrl),
                                    fit: BoxFit.cover,
                                  )
                                ),
                                
                              ),
                              SizedBox(width: 12,),
                              Column(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        tx.name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w800
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        tx.title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontFamily: 'Quicksand',
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Column(
                            children: <Widget>[
                                Text('2342',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Quicksand',
                                  ),
                                ),
                                Text('Popularity',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Quicksand',
                                    //fontSize: 13
                                  ),
                                )
                            ],
                          ),
                              ),
                          SizedBox(width: 10,),
                          Column(
                            children: <Widget>[
                              Text('4736',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              Text('Like',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quicksand',
                                  //fontSize: 13
                                ),
                              )
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: <Widget>[
                              Text('136',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Quicksand',
                                ),
                              ),
                              Text('Followed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quicksand',
                                  //fontSize: 13
                                ),
                              )
                            ],
                          )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  //SizedBox()
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, ),     // right: 4
                    child: Container(
                      height: MediaQuery.of(context).size.height /2 - 200,
                      width: MediaQuery.of(context).size.width /2 - 140,  // 140
                      //color: Colors.red,
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.more_horiz, size: 30, color: Colors.white,),  // size:30
                          //SizedBox(height: 8,),
                          Text(tx.rank.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text('Ranking',
                            style: TextStyle(
                              fontSize: 13,    // fontsize : 13 
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }).toList()
        ) 
      ),
    );
  }
}