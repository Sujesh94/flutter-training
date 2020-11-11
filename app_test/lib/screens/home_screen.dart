import 'package:flutter/material.dart';
import 'package:app_test/constants.dart';
import 'package:app_test/components/image_button.dart';
import 'package:app_test/components/category_list_button.dart';
import 'package:app_test/utilities/tab_list_items.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> list = [
    FlatButton(
      child: ListTile(
        leading: Image.asset('images/2.png'),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Center(child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(kAppbarText),
          ),),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.person,
                  size: 26.0,
                ),
              ),),

        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'What are you searching for(eg. Sea fish,Shell fish)',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              child: Center(
                  child: Text(
                'Opening on 01 Nov 2020',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              )),
              color: Colors.lightBlue,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListImageButton(
                    imageName: 'images/1.jpg',
                  ),
                  ListImageButton(imageName: 'images/2.JPG'),
                  ListImageButton(imageName: 'images/3.JPG'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Top Category',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey.shade100,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryListImageButton(
                    imagePath: 'images/2.png',
                    imageName: 'SeaFish',
                  ),
                  CategoryListImageButton(
                    imagePath: 'images/6.jpg',
                    imageName: 'Fresh water fish',
                  ),
                  CategoryListImageButton(
                    imagePath: 'images/7.png',
                    imageName: 'Shell Fish',
                  ),
                  CategoryListImageButton(
                    imagePath: 'images/8.jpg',
                    imageName: 'SeaFish',
                  ),
                  CategoryListImageButton(
                    imagePath: 'images/9.jpg',
                    imageName: 'SeaFish',
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 3, // length of tabs
              initialIndex: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.lightBlueAccent,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'TOP SELLING'),
                        Tab(
                          text: 'RECENT SELLING',
                        ),
                        Tab(text: 'WHATS NEW'),
                      ],
                    ),
                  ),
                  Container(
                    height: 400, //height of TabBarView
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.3))),
                    child: TabBarView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            children: [
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.white,
                                onPressed: () {},
                                child: Card(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/2.png',
                                        width: 100,
                                        height: 100,
                                        semanticLabel: 'Hai',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.white,
                                onPressed: () {},
                                child: Card(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/2.png',
                                        width: 100,
                                        height: 100,
                                        semanticLabel: 'Hai',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.white,
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/2.png',
                                      width: 100,
                                      height: 100,
                                      semanticLabel: 'Hai',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    padding: EdgeInsets.all(15),
                    onPressed: (){},
                    color: Colors.lightBlue,
                    child: Container(
                      height: 20,
                        child: Text('View All',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text(
              'Order Later',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Search',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(
              'Notifications',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'Cart',
            ),
          ),
        ],
      ),
    );
  }
}
