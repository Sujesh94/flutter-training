import 'package:flutter/material.dart';
import 'package:arogyasetu/screen/your_status_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:arogyasetu/constant.dart';
import 'package:arogyasetu/screen/self_assesment.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:arogyasetu/utilities/common_bottom_sheet.dart';
import 'faq_screen.dart';

class CommonScreen extends StatefulWidget {
  Color color;
  static const String id='Home';
  @override
  _CommonScreenState createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  InAppWebViewController _webViewController;
  String url = "";
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF4082FF),
          title: Text(
            'Aarogya Setu',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.share, color: Colors.black87),
              color: Color(0xFF232b2b),
              iconSize: 25.0,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.info_outline, color: Colors.black87),
              iconSize: 25.0,
              color: Color(0xFF232b2b),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.g_translate, color: Colors.black87),
              color: Color(0xFF232b2b),
              iconSize: 25.0,
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Color(0xFF76C4FE),
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            tabs: [
              Tab(
                icon: FaIcon(FontAwesomeIcons.heartbeat,),
                text: 'Your Status',),
              Tab(
                icon: FaIcon(FontAwesomeIcons.stethoscope),
                text: 'Self Assess',),
              Tab(
                icon: FaIcon(FontAwesomeIcons.chartBar),
                text: 'COVID Updates',),
              Tab(icon: FaIcon(FontAwesomeIcons.idCard), text: 'e-Pass',),
            ],
          ),
        ),
        body: TabBarView(children: [
          YourStatusListView(),
          SelfAssesment(),
          webViewUpdate(),
          //Text('hai'),
          Contacts(),
        ],),
        bottomSheet: CommonBottomSheet(),
      ),
    );
  }

  Container webViewUpdate() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: progress < 1.0
                ? LinearProgressIndicator(value: progress)
                : Container(),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent)),
              child: InAppWebView(
                initialUrl: "https://dashboard.kerala.gov.in/",
                initialOptions: InAppWebViewGroupOptions(
                    crossPlatform: InAppWebViewOptions(
                      debuggingEnabled: true,
                    )),
                onWebViewCreated: (InAppWebViewController controller) {
                  _webViewController = controller;
                },
                onLoadStart:
                    (InAppWebViewController controller, String url) {
                  setState(() {
                    this.url = url;
                  });
                },
                onLoadStop:
                    (InAppWebViewController controller, String url) async {
                  setState(() {
                    this.url = url;
                  });
                },
                onProgressChanged:
                    (InAppWebViewController controller, int progress) {
                  setState(() {
                    this.progress = progress / 100;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

}

