import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'image_button.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

final List<String> imageList = [
  'images/1.jpeg',
  'images/2.jpeg',
  'images/3.jpeg',
  'images/4.jpeg',
  'images/5.jpeg',
  'images/6.jpeg',
  'images/7.jpeg',
  'images/8.jpeg',
  'images/9.jpeg',
  'images/10.jpeg'
];

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text('Foodies',style: TextStyle(fontWeight: FontWeight.bold),)), leading: DropdownButton(
          isExpanded: true,
          icon: new Icon(Icons.menu),
          items: [
            DropdownMenuItem(child: Text('My Orderr',),value:'Order',),
            DropdownMenuItem(child: Text('My Wishlist',),value:'Order',),
            DropdownMenuItem(child: Text('My Cart',),value:'Order',),
          ],onChanged: (value){
            setState(() {
            });
        },
        ),),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 90,
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                    hintText: 'Search in thousands of products',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                  onChanged: (value) {
                    //TODO: 3.Capture the text field value
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: ReusableCard(
                        icon: Icons.home,
                        text: 'Home Address',
                      ),
                      onPressed: () {
                        //TODO:1.Connect to map for home Addresss
                        print('Home address');
                      },
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: ReusableCard(
                        icon: Icons.location_city,
                        text: 'Office Address',
                      ),
                      onPressed: () {
                        //TODO:2.Connect to map for Office Addresss
                        print('Office adddress');
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore by Category',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('See all(${imageList.length})')
                ],
              ),
              SizedBox(
                child: Divider(
                  height: 10,
                ),
              ),
              Container(
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      ImageButton(
                        imageNumber: 1,
                        imageName: 'Steek',
                      ),
                      ImageButton(
                        imageNumber: 2,
                        imageName: 'KFC',
                      ),
                      ImageButton(
                        imageNumber: 3,
                        imageName: 'Bevarages',
                      ),
                      ImageButton(
                        imageNumber: 4,
                        imageName: 'McDonald',
                      ),
                      ImageButton(
                        imageNumber: 5,
                        imageName: 'PizzaHut',
                      ),
                      ImageButton(
                        imageNumber: 6,
                        imageName: 'Biriyani',
                      ),
                      ImageButton(
                        imageNumber: 7,
                        imageName: 'Vegetarian',
                      ),
                      ImageButton(
                        imageNumber: 8,
                        imageName: 'Dominos',
                      ),
                      ImageButton(
                        imageNumber: 9,
                        imageName: 'Burger King',
                      ),
                      ImageButton(
                        imageNumber: 10,
                        imageName: 'CCD',
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: FlatButton(
                        child: Row(
                          children: [
                            Image.asset('images/1.jpeg'),
                            Text('Price'),
                          ],
                        ),
                        onPressed: () {
                          print('Hai');
                        },
                      ),
                    ),
                    FlatButton(
                      child: Row(
                        children: [
                          Image.asset('images/2.jpeg'),
                          Text('Price'),
                        ],
                      ),
                      onPressed: () {
                        print('Hai');
                      },
                    ),
                    FlatButton(
                      child: Row(
                        children: [
                          Image.asset('images/3.jpeg'),
                          Text('Price\nSujesh'),
                        ],
                      ),
                      onPressed: () {
                        print('Hai');
                      },
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        'images/poster.jpg',
                        fit: BoxFit.fill,
                        width: 370,
                        height: 150,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                    onTap: () {
                      //TODO:Navigate to Corresponding location while taping on poster
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add_shopping_cart,
          ),
          backgroundColor: Colors.orange,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white70,
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.shopping_basket),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.favorite),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(
                  Icons.account_balance_wallet,
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
