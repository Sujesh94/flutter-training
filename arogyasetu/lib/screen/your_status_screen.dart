import 'package:flutter/material.dart';
import 'package:arogyasetu/utilities/covid_tips.dart';
import 'package:arogyasetu/utilities/social_tips.dart';
import 'package:arogyasetu/constant.dart';


class YourStatusListView extends StatefulWidget {

  @override
  _YourStatusListViewState createState() => _YourStatusListViewState();
}

class _YourStatusListViewState extends State<YourStatusListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Color(0xFF31FF17),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          child: Center(
                            child: Text(
                              '👩🏻‍',
                              style: TextStyle(fontSize: 30.0),
                            ),),
                          decoration: kInnerDecoration,
                        ),
                      ),
                      height: 80.0,
                      width: 80.0,
                      decoration: kGradientBoxDecoration,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Text(
                      'You are safe',
                      style: TextStyle(
                          fontSize: 23.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text('We Recommends:', style: kHeadingStyle),
        ),
        SizedBox(
          height: 20.0,
        ),
        CovidTips(
          image: 'images/img1.jpg',
          title: 'Maintain Social Distance',
        ),
        CovidTips(
          image: 'images/img2.jpg',
          title: 'Take Self Asssesment Test',
        ),
        CovidTips(
          image: 'images/img3.jpg',
          title: 'Check App Regulerly for Updates',
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text('HOw to maintain social distance:',
              style: kHeadingStyle),
        ),
        SizedBox(
          height: 10.0,
        ),
        SocialTips(
          title: 'Say Hi without HandShakes',
          image: 'images/img4.jpg',
        ),
        CovidTips(
          image: 'images/img5.jpg',
          title: 'Avoid Social Gatherings',
        ),
        SocialTips(
          title: 'Keep Distance atleast 6ft',
          image: 'images/img6.jpg',
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text('How to stay safe:', style: kHeadingStyle),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/img7.jpg',
                ),
                Text('COVID-19 Do\'s & Don\'ts', style: kHeadingStyle),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset('images/img7.jpg'),
                Text('Learn more about COVID-19', style: kHeadingStyle),
                SizedBox(
                  height: 20.0,
                ),
                Image.asset('images/img8.jpg'),
                Text('Safe measeure against COVID-19',
                    style: kHeadingStyle),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 100.0,
        ),
      ],
    );
  }
}

