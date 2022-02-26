import 'package:pujapurohit/Utils/Imports.dart';

class ButtonContainers extends StatelessWidget {
  ButtonContainers({
    Key? key,
    required this.data,
    required this.color,
    required this.color2,
  }) : super(key: key);

  final String data;
  var color;
  var color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.orangeAccent
        ),
        color: color,
      ),
      padding: EdgeInsets.all(10),
      child: Text1(data: data, max: 12, min: 10,weight: FontWeight.w600,clr: color2,),
    );
  }
}

class PaddedDottedLine2 extends StatelessWidget {
  const PaddedDottedLine2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 30,
        lineThickness: 1.5,
        dashLength: 2.0,
        dashColor: Colors.grey,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}

class PaddedDottedLine extends StatelessWidget {
  PaddedDottedLine({
    Key? key,
    required this.bookingDetailController,
    required this.dashColorCondition,
  }) : super(key: key);

  final BookingDetailController bookingDetailController;
  var dashColorCondition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 30,
        lineThickness: 1.5,
        dashLength: 2.0,
        dashColor: dashColorCondition!?Colors.orangeAccent:Colors.grey,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  final dynamic article;
  final List<dynamic> likes;
  final double width;
  final double height;
  final String somesnaps;
  final String image;
  final String title;
  final sender;

  final senderImg;
  final String firstpara;
  final List<dynamic> content;
  final Timestamp time;
  final views;

  ArticleCard(
      {required this.article,
      required this.likes,
      required this.width,
      required this.height,
      required this.somesnaps,
      required this.image,
      required this.title,
      required this.sender,
      required this.senderImg,
      required this.firstpara,
      required this.content,
      required this.time,
      required this.views});

  ArticleCard.fromArticle({required this.article, required this.width, required this.height})
      : this.likes = article['likes'],
        this.somesnaps = article,
        this.image = article['img'],
        this.title = article['title'],
        this.sender = article['sender'],
        this.senderImg = article['sender_img'],
        this.firstpara = article['content'][0]['data'],
        this.content = article['content'],
        this.time = article['time'],
        this.views = article['views'];

  @override
  Widget build(BuildContext context) {
    final ArticleController articleController = Get.put(ArticleController());
    final AuthController authController = Get.put(AuthController());
    DateTime date = time.toDate();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            //width: width * 0.9,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('$senderImg'),
              ),
              title: Text1(
                data: "$sender",
                max: 14,
                min: 12,
                weight: FontWeight.bold,
              ),
              subtitle: Text1(
                data: "${DateFormat.yMMMEd().format(date)},${DateFormat.jm().format(date)}",
                max: 12,
                min: 10,
                clr: Colors.black54,
              ),
              // trailing: Icon(
              //   Icons.more_vert_outlined,
              //   color: Colors.black54,
              // ),
            ),
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        Container(
          height: height * 0.3,
          width: width * 0.85,
          decoration: BoxDecoration(
              // boxShadow: [BoxShadow(color: Color(0xFFE6E6E6), blurRadius: 20)],
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: NetworkImage('$image'), fit: BoxFit.contain)),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 20),
          child: Column(
            children: [
              Text(
                '$title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text: "${firstpara.substring(0, 100)}... ",
                    style: GoogleFonts.aBeeZee(fontSize: 12, color: Colors.black54),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'View more',
                          style: GoogleFonts.aBeeZee(fontSize: 11, color: LightColors.color5, decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              //  setState(() {
                              //    dynamic views = articles['views']+1;
                              //    FirebaseFirestore.instance//ab chala k dekh
                              //        .doc('PujaPurohitFiles/Article')
                              //        .update({
                              //      "articles": FieldValue.arrayUnion([
                              //        {
                              //          // 'comments': articles['comments'],//kya hua
                              //          'img': articles['img'],
                              //          'content': articles['content'],
                              //          'likes': articles['likes'],
                              //          'sender': articles['sender'],
                              //          'sender_img': articles['sender_img'],
                              //          'time': articles['time'],
                              //          'views': views,
                              //          'title': articles['title']
                              //        }
                              //      ])
                              //    }).
                              //    whenComplete(() {
                              //      FirebaseFirestore.instance
                              //          .doc('PujaPurohitFiles/Article')
                              //          .update({
                              //        "articles": FieldValue.arrayRemove([articles])
                              //      });
                              //    });
                              //    articleController.updateSomeData(title, Sender,
                              //        Sender_img, time, content, views, image,articles['likes'].length);
                              //    Get.toNamed('/articledetail');
                              //  });
                              articleController.updateSomeData(title, sender, senderImg, time, content, views, image, article['likes'].length);

                              Get.toNamed('/articledetail');
                            })
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              // Row(
              //   children: [
              //     InkWell(
              //         onTap: () {
              //           FirebaseFirestore.instance
              //               .doc('PujaPurohitFiles/Article')
              //               .update({
              //             "articles": FieldValue.arrayRemove([articles])
              //           }).whenComplete(() {
              //             List<dynamic> likees = articles['likes'];
              //             likes.contains('${authController.user!.uid}')?likees.remove('${authController.user!.uid}'):likees.add('${authController.user!.uid}');
              //             FirebaseFirestore.instance//ab chala k dekh
              //                 .doc('PujaPurohitFiles/Article')
              //                 .update({
              //               "articles": FieldValue.arrayUnion([
              //                 {
              //                   // 'comments': articles['comments'],//kya hua
              //                   'img': articles['img'],
              //                   'content': articles['content'],
              //                   'likes': likees,
              //                   'sender': articles['sender'],
              //                   'sender_img': articles['sender_img'],
              //                   'time': articles['time'],
              //                   'views': articles['views'],
              //                   'title': articles['title']
              //                 }
              //               ])
              //             });
              //           });
              //         },
              //         child: Icon(
              //           CupertinoIcons.heart_fill,
              //           color: likes.contains('${authController.user!.uid}')
              //               ? LightColors.buttonColor
              //               : Colors.black54,
              //           size: 16,
              //         )),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Text1(
              //       data: '${likes.length}',
              //       max: 11,
              //       min: 10,
              //       clr: Colors.black,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Icon(
              //       CupertinoIcons.eye_fill,
              //       color: Colors.black54,
              //       size: 16,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Text1(
              //       data: '$views',
              //       max: 11,
              //       min: 10,
              //       clr: Colors.black,
              //     ),
              //   ],
              // ),

              SizedBox(
                height: 50,
              ),

              
            ],
          ),
        ),
      ],
    );
  }
}


class MiniBox extends StatelessWidget{
  final IconData? iconData;
  final bool icon;
  final String FirstText;
  final String SecondText;
  MiniBox({ this.iconData, required this.icon,required this.FirstText,required this.SecondText});
  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              icon?Icon(iconData,size:12,color:Colors.grey,):SizedBox(),

              icon?SizedBox(width:5):SizedBox(),
              Expanded(child: Text1(data: "$FirstText",max: ResponsiveWidget.isSmallScreen(context)?10:12,min: 8,clr: Colors.grey,weight: FontWeight.w600,),flex: 1,)
            ],),
          SizedBox(height:5),
          Text1(data: "$SecondText",max: ResponsiveWidget.isSmallScreen(context)?10:8,min: 7,clr: Colors.grey,weight: FontWeight.w100),
        ]
    );
  }

}

class MainButton extends StatelessWidget{
  final String? title;
  final VoidCallback? tapEvent;
  final Color? clr;
  MainButton({
    this.title,this.tapEvent,this.clr
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: tapEvent, child: Text1(data: "$title", max: 12, min: 11,clr: Colors.white,
    ),
        style: ElevatedButton.styleFrom(primary: clr,shape: StadiumBorder())
    );
  }

}

class ModifiedTextIcon extends StatelessWidget{
  String data;
  double max;
  Color? color;
  double min;
  FontWeight? weight;
  IconData icondata;
  Color? iconColor;
  ModifiedTextIcon({this.iconColor, required this.icondata,required this.max,required this.data,required this. min,this.color,this.weight});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icondata,color: iconColor,),
        SizedBox(width:5),
        AutoSizeText('$data',maxFontSize: max,minFontSize: min,style: GoogleFonts.aBeeZee(color: color,fontWeight: weight,letterSpacing: 1),),
      ],
    );
  }

}


class DetailSelectedItem {
  String selected = all;
  int? item;
  DetailSelectedItem({required this.selected, this.item});
}


class InfoText extends StatelessWidget {
  final String? type;
  final String? text;

  InfoText({this.type, this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AutoSizeText(
          '$type: ',
          style: TextStyle(
            color: Colors.white,
          ),
          maxFontSize: 16,
          minFontSize: 16,
        ),
        AutoSizeText(
          text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          maxFontSize: 16,
          minFontSize: 16,
        )
      ],
    );
  }
}



class BottomBarColumn extends StatelessWidget {
  final String? heading;
  final String? s1;
  final String? s2;
  final String? s3;
  final String? l1;
  final String? l2;
  final String? l3;

  BottomBarColumn({
    this.heading,
    this.s1,
    this.s2,
    this.s3,
    this.l1,
    this.l2,
    this.l3
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            heading!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            maxFontSize: 18,
            minFontSize: 18,
          ),
          SizedBox(
            height: 10,
          ),
          Link(
              uri: Uri.parse('$l1'),
              target: LinkTarget.blank,
              builder: (context, followlink) {
                return InkWell(
                  onTap: followlink,
                  child: AutoSizeText(
                    s1!,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    maxFontSize: 14,
                    minFontSize: 14,
                  ),
                );
              }
          ),
          SizedBox(height: 5),
          Link(
              uri: Uri.parse('$l2'),
              target: LinkTarget.blank,
              builder: (context, followlink) {
                return InkWell(
                  onTap: followlink,
                  child: AutoSizeText(
                    s2!,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    maxFontSize: 14,
                    minFontSize: 14,
                  ),
                );
              }
          ),
          SizedBox(height: 5),
          Link(
              uri: Uri.parse('$l3'),
              target: LinkTarget.blank,
              builder: (context, followlink) {
                return InkWell(
                  onTap: followlink,
                  child: AutoSizeText(
                    s3!,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    maxFontSize: 14,
                    minFontSize: 14,
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}