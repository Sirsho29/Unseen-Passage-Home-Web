import 'dart:html';

import 'package:flutter/material.dart';
import './widgets/appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    final appbarIcon = IconButton(
        icon: Icon(Icons.more_horiz),
        hoverColor: Colors.lightBlue,
        onPressed: () {
          Scaffold.of(context).openDrawer();
        });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar.myAppBar(appbarIcon),
      drawer: Drawer(
        child: Text('asd'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    constraints: BoxConstraints(
                      maxHeight: height,
                      minHeight: height / 3,
                    ),
                    height: (height / width) * height * 1.2,
                    width: width,
                    color: Colors.yellow,
                    child: Image.asset(
                      'assets/back.jpg',
                      fit: BoxFit.cover,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: height / 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            'Welcome to Unseen Passage Group !',
                            textScaleFactor: textScale,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                        SizedBox(
                          height: height / 20,
                        ),
                        Container(
                          width: width / 1.5,
                          child: Text(
                            'The modern way of online exams are here. According to the latest needs for online examinations we are improvising Artificial Intelligence in the field of examinations and trying to implement smart exams which helps the examiners to keep an eye on the students and helps the students to learn the subjects properly',
                            textScaleFactor: textScale,
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Gilroy',

                                //fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: height / 20,
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            elevation: 5,
                            color: Colors.lightBlue,
                            child: Text(
                              'Learn More',
                              textScaleFactor: textScale,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: (width < 500)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DescWidget(
                          title: 'Try out e-Xams !!',
                          desc:
                              'e-Xams is the exam portal for all kinds of exams we are serving. There are few free of cost practice tests. Institutions can contact us for getting access to the online portal for conducting their exams. Do check our pricings as well.',
                          buttonTitle: 'Pricings',
                        ),
                        DescWidget(
                          title: 'Try out Blogs !!',
                          desc:
                              'Blogs is a discussion portal where students can share their experiences about exams, how they prepare for it, their strategies and other stuff. Students can take benefit from it as they will come to know the insights of other students appearing for the same exam.',
                          buttonTitle: 'Blogs',
                        ),
                        DescWidget(
                          title: 'Check out our other Products !!',
                          desc:
                              'Check out our other products and also subscribe to our newsletters to get updates about product launches and important announcements',
                          buttonTitle: 'Subscribe',
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DescWidget(
                          title: 'Try out e-Xams !!',
                          desc:
                              'e-Xams is the exam portal for all kinds of exams we are serving. There are few free of cost practice tests. Institutions can contact us for getting access to the online portal for conducting their exams. Do check our pricings as well.',
                          buttonTitle: 'Pricings',
                        ),
                        DescWidget(
                          title: 'Try out Blogs !!',
                          desc:
                              'Blogs is a discussion portal where students can share their experiences about exams, how they prepare for it, their strategies and other stuff. Students can take benefit from it as they will come to know the insights of other students appearing for the same exam.',
                          buttonTitle: 'Blogs',
                        ),
                        DescWidget(
                          title: 'Check out our other Products !!',
                          desc:
                              'Check out our other products and also subscribe to our newsletters to get updates about product launches and important announcements',
                          buttonTitle: 'Subscribe',
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescWidget extends StatelessWidget {
  const DescWidget(
      {Key key,
      @required this.title,
      @required this.desc,
      @required this.buttonTitle,
      this.mainRoute,
      this.buttonRoute})
      : super(key: key);

  final String title;
  final String desc;
  final String mainRoute;
  final String buttonRoute;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor;
    return RaisedButton(
      color: Colors.white,
      onPressed: () {},
      hoverColor: Colors.orange[100],
      hoverElevation: 5,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: height / 2.3,
          width: width / 3.5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: height / 15,
                width: width,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: textScale,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Container(
                height: height / 5,
                width: width / 1.5,
                child: Text(
                  desc,
                  textScaleFactor: textScale,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Gilroy',
                      //fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      elevation: 5,
                      color: Colors.lightBlue,
                      child: Text(
                        buttonTitle,
                        textScaleFactor: textScale,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            //fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
