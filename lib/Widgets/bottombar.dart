import 'package:pujapurohit/Utils/Imports.dart';

import '../SignIn/Update.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.black,
      child: Column(
        children: [
          ResponsiveWidget.isSmallScreen(context)?Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              BottomBarColumn(
                heading: capitalAbout,
                s1: contactUs,
                s2: aboutUs,
                s3: careers,
              ),
              BottomBarColumn(
                heading: help,
                s1: payment,
                s2: cancellation,
                s3: faq,
              ),
              BottomBarColumn(
                heading: social,
                s1: twitter,
                s2: facebook,
                s3: youTube,
                l1:twitterLink,
                l2:facebookLink,
                l3: youtubeLink,
              ),
              Container(
                color: Colors.blueGrey,
                width: 150,
                height: 2,
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: email,
                    text: inpuja,
                  ),
                  // SizedBox(height: 5),
                  // InfoText(
                  //   type: 'Address',
                  //   text: 'R1/63 Budh Vihar Delhi - 110086',
                  // )
                ],
              ),
            ],
          ):Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: about,
                s1: contactUs,
                s2: about,
                s3: careers,
              ),
              BottomBarColumn(
                heading: help,
                s1: payment,
                s2: cancellation,
                s3: faq,
              ),
              BottomBarColumn(
                heading: social,
                s1: twitter,
                s2: facebook,
                s3: youTube,
                l1:twitterLink,
                l2:facebookLink,
                l3: youtubeLink,
              ),
              Container(
                color: Colors.blueGrey,
                width: 2,
                height: 150,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InfoText(
                    type: email,
                    text: inpuja,
                  ),
                  // SizedBox(height: 5),
                  // InfoText(
                  //   type: 'Address',
                  //   text: 'R1/63 Budh Vihar Delhi - 110086',
                  // )
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20),
          SelectableText(
            copyRight,
            style: TextStyle(
              color: Colors.blueGrey[300],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}


