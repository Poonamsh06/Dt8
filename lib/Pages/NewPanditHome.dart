import 'package:intl/intl.dart';
import 'package:pujapurohit/Imports.dart';
import 'PanditSection/Controllers/upcomigEvent.dart';
import 'TopBar.dart';
import 'Topbar_items.dart';
class NewPanditHome extends StatefulWidget{



  @override
  _NewPanditHomeState createState() => _NewPanditHomeState();
}

class _NewPanditHomeState extends State<NewPanditHome> {

  DateTime _currentdate = DateTime.now();



  @override
  Widget build(BuildContext context) {
    String _formatdate = DateFormat.yMMMd().format(_currentdate);
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    AuthController authController = Get.find();
    UserController userController = Get.put(UserController());
    LoginController loginController = Get.put(LoginController());
    GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    var ScreenSize= MediaQuery.of(context).size;
    return Scaffold(
        body:
        GetX<DateController>(
          init: Get.put(DateController()),
          builder: (DateController dateController){
            if(dateController.userModel.value.background!=null){
              return
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (ResponsiveWidget.isSmallScreen(context))
                          TopTabs(),
                        if (ResponsiveWidget.isSmallScreen(context))
                          Topbar3(),
                        if (!ResponsiveWidget.isSmallScreen(context))
                          Topbar2(),
                        //SizedBox(height: 20,),
                        Container(
                          //color:Color(0xffFFFAF3),
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              HeadingText(width: width,text: feature,),
                              SizedBox(height: 20,),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Padding(
                                  padding: EdgeInsets.only(left:ResponsiveWidget.isMediumScreen(context)? 0:width*0.15,right:ResponsiveWidget.isMediumScreen(context)? 0: width*0.2,),
                                  child: Row(
                                    children:List.generate(topBarItem.length, (index) => Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: TopBarItemCard(topBarItem: topBarItem[index],),
                                    )),
                                  ),
                                ),
                              ),


                              SizedBox(height: 20,),
                              HeadingText(width: width,text: events,),
                              Container(
                                //color: Color(0xffFFFAF3),
                                padding: EdgeInsets.only(left:ResponsiveWidget.isMediumScreen(context)? 0:width*0.15,right:ResponsiveWidget.isMediumScreen(context)? 0: width*0.2,),
                                //padding: EdgeInsets.all(10),
                                height:ResponsiveWidget.isSmallScreen(context)?height*0.3: height*0.4,
                                width: width,
                                child: GetX<UpcomingEventController>(
                                  init: Get.put<UpcomingEventController>(UpcomingEventController()),
                                  builder: (UpcomingEventController upcomingController) {
                                    if (upcomingController != null && upcomingController.upcomings != null) {
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children:List.generate(upcomingController.upcomingList.value!.length, (index) => Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: scollImage(upcomingController.upcomings![index].link!,width,height,upcomingController.upcomings![index].image!,upcomingController.upcomings![index].name!,context),
                                          )),
                                        ),
                                      );
                                    } else {
                                      return Center(child: SizedBox(
                                          height: 50,width: 50,
                                          child: Loader()));
                                    }
                                  },
                                ),
                              ),

                              SizedBox(height: 20,),
                              HeadingText(width: width,text: panditHeading,),
                              SizedBox(height: 30,),
                              Padding(
                                padding: EdgeInsets.only(left:ResponsiveWidget.isSmallScreen(context)? 0: width*0.1,right: ResponsiveWidget.isSmallScreen(context)? 0:width*0.1,bottom: 40),
                                child: GetX<PanditController>(
                                  init: Get.put<PanditController>(PanditController(lat: double.parse('${userController.userModel.value.lat}'),lng: double.parse('${userController.userModel.value.lng}'))),
                                  builder: (PanditController panditController) {
                                    if (panditController != null && panditController.pandits != null) {
                                      return ResponsiveWidget.isSmallScreen(context) ?Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListView.builder(
                                          physics: NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: panditController.panditList.value!.length,
                                          itemBuilder: (_, index) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: NewPanditCard(bModal: panditController.pandits![index]),
                                            );
                                          },
                                        ),
                                      ):
                                      GridView.builder(
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: ResponsiveWidget.isMediumScreen(context)?2:4,
                                          crossAxisSpacing: 20,
                                          mainAxisSpacing: 20,
                                          //childAspectRatio: ResponsiveWidget.isTablet(context)?1.5:1,

                                        ),
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: panditController.panditList.value!.length,
                                        itemBuilder: (_, index) {
                                          return NewPanditCard(bModal: panditController.pandits![index]);
                                        },
                                      );

                                    } else {
                                      return Center(child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                            height: 50,width: 40,
                                            child: Loader()),
                                      ));
                                    }
                                  },
                                ),
                              ),
                              ResponsiveWidget.isSmallScreen(context)?MobileBottomBar():NewBottomBar()
                            ],
                          ),
                        ),

                      ]
                  ),
                );
            }
            else{
              return Center(child: Text(loading),);
            }
          },
        )

    );
  }


  // Widget slideroffers(BuildContext context, double height, double width,String link,String img) {
  //   return Link(
  //     target:LinkTarget.blank,
  //     uri: Uri.parse('$link'),
  //     builder: (_,followlink){
  //       return InkWell(
  //         hoverColor: Colors.white,
  //         onTap: followlink,
  //         child:  Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               //margin:EdgeInsets.all(ResponsiveWidget.isSmallScreen(context)?20:40),
  //               height:ResponsiveWidget.isMobile(context)?height*0.25:ResponsiveWidget.isTablet(context)?height*0.4: height*0.5,
  //               width: ResponsiveWidget.isDesktop(context)?width*0.7 :width*0.8,
  //               decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(10),
  //                   image: DecorationImage(image: NetworkImage('$img'),
  //                       fit: BoxFit.fill
  //                   )),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }


  Widget scollImage(String link,double width,double height,String image,String name,BuildContext context) {

    return Link(
      //ri: Uri.parse('http://localhost:50183/#/detail?detail=$link'),
        uri: Uri.parse('http://pujapurohit.in/#/detail?id=$link'),
        target: LinkTarget.blank,
        builder: (context,followlink){
          return InkWell(
            onTap: followlink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffFCAB29),
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                          offset: Offset(2.0, 2.0), //shadow direction: bottom right
                        )
                      ],
                      color: Color(0xffFFFAF4),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: ResponsiveWidget.isSmallScreen(context)?190:270,
                  width: ResponsiveWidget.isSmallScreen(context)?190: 270,
                  //padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(height: ResponsiveWidget.isSmallScreen(context)?15:20,),
                      Container(
                          height: ResponsiveWidget.isSmallScreen(context)?130:210,
                          //child: Image.network(image,)
                          decoration: BoxDecoration(image:DecorationImage(
                            image: NetworkImage(image),
                          ),)
                      ),
                      SizedBox(height: ResponsiveWidget.isSmallScreen(context)?8:10,),
                      Icon(Icons.keyboard_arrow_down,color: Colors.orangeAccent,)
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  // Padding customHeading(BuildContext context,String txt1,String txt2) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10),
  //     child: RichText(
  //       text: TextSpan(
  //         style: Theme.of(context).textTheme.headline5!.copyWith(
  //             fontWeight: FontWeight.bold,
  //             color: Colors.white
  //         ),
  //         children: [
  //           TextSpan(text: "$txt1\n",),
  //           TextSpan(
  //               text: "$txt2",
  //               style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //               ))
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// class PujaAroundYou extends StatelessWidget {
//   const PujaAroundYou({
//     Key? key,
//     required this.width,
//   }) : super(key: key);
//
//   final double width;
//
//   @override
//   Widget build(BuildContext context) {
//     return cityClass();
//   }
// }

// class cityClass extends StatelessWidget {
//   late final BMModal bmModal;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//           padding: EdgeInsets.only(left:ResponsiveWidget.isMobile(context)? 0: MediaQuery.of(context).size.width*0.1,
//           right:ResponsiveWidget.isMobile(context)? 0: MediaQuery.of(context).size.width*0.1),
//           //child: customHeading(context,'Purohit','Near you...'),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SelectableText("Purohit",
//             style: ResponsiveWidget.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87
//             ):Theme.of(context).textTheme.headline6!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87
//             ),
//           ),
//           SelectableText("Near you...",
//             style: ResponsiveWidget.isDesktop(context)? Theme.of(context).textTheme.headline4!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87
//             ):Theme.of(context).textTheme.headline5!.copyWith(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black87
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class NewPanditCard extends StatelessWidget{
  final String? name;
  final String? uid;
  final BMModal bModal;
  NewPanditCard({required this.bModal, this.name,this.uid});

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width =  MediaQuery.of(context).size.width;
    final UserController userController = Get.put(UserController());
    GeoPoint geoPoint = bModal.location!['geopoint'];
    double distanceInMeters = Geolocator.distanceBetween(double.parse('${userController.userModel.value.lat}'),double.parse('${userController.userModel.value.lng}'), geoPoint.latitude, geoPoint.longitude);
    return InkWell(
      onTap: (){
        FareBreakup farebreakup = Get.put(FareBreakup());
        farebreakup.pandit(bModal.image!, bModal.name!, bModal.number!, bModal.token!,bModal.uid!,double.parse('${(distanceInMeters/1000).toStringAsFixed(2)}'));
        CommonController commonController = Get.put(CommonController());
        commonController.updatePandit(bModal.uid!);
        Get.toNamed('/profile?puid=${bModal.uid}');
      },
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Color(0xffFFFAF3),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffFCAB29),
                  blurRadius: 1.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), //shadow direction: bottom right
                )
              ]
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width <=525 && MediaQuery.of(context).size.width >=515?3:8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: ResponsiveWidget.isMobileLarge(context)?90:ResponsiveWidget.isMediumScreen(context)?180:150,
                          width: ResponsiveWidget.isMobileLarge(context)?120:ResponsiveWidget.isMediumScreen(context)?180:150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(color: Colors.white,blurRadius: 10)],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage('${bModal.image}'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ],
                    ),

                    //SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text1(max: 12, data: '${bModal.name}', min: 12,weight: FontWeight.w600,),
                          SizedBox(width:10),
                          bModal.verified?Icon(Icons.verified,size: 13,color: Color(0xff34B7F1),):SizedBox()
                        ],),
                    ),
                    //SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        rating(),
                        //SizedBox(width:10),
                        Icon(Icons.circle,color: Colors.black54,size: 2,),
                        //SizedBox(width:10),
                        Text1(max: 10, data: '${bModal.city}', min: 10,clr: Colors.black54,),
                        //SizedBox(width:10),
                        Icon(Icons.circle,color: Colors.black54,size: 2,),
                        //SizedBox(width:10),
                        Text1(max: 10, data: '${bModal.state}', min: 10,clr: Colors.black54,),
                        //SizedBox(width:10),
                        Icon(Icons.circle,color: Colors.black54,size: 2,),
                        //SizedBox(width:10),
                        Text1(max: 10, data: '${(distanceInMeters/1000).toStringAsFixed(2)} KM', min: 10,clr: Colors.black54,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        RaisedButton(
                          color: Colors.orangeAccent,
                          onPressed: (){
                            Get.toNamed('/profile?puid=${bModal.uid}');
                          },
                          child: Text("Book",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      // child: HoverWidget(
      //   onHover: (event){},
      //   hoverChild: Expanded(
      //     child: Container(
      //       padding: EdgeInsets.all(10),
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(20),
      //           border: Border.all(color: Color(0xff181c2c)),
      //           boxShadow: [
      //             BoxShadow(
      //             color: Color(0xffFCAB29),
      //             blurRadius: 1.0,
      //             spreadRadius: 0.0,
      //             offset: Offset(2.0, 2.0), //shadow direction: bottom right
      //           )
      //           ]
      //       ),
      //
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     Container(
      //                       height: ResponsiveWidget.isMobileLarge(context)?100:ResponsiveWidget.isMediumScreen(context)?200:150,
      //                       width: ResponsiveWidget.isMobileLarge(context)?150:ResponsiveWidget.isMediumScreen(context)?200:150,
      //                       decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(20),
      //                           boxShadow: [
      //                             BoxShadow(color: Colors.white,blurRadius: 10)],
      //                           color: Colors.white,
      //                           shape: BoxShape.rectangle,
      //                           image: DecorationImage(
      //                               image: NetworkImage('${bModal.image}'),
      //                               fit: BoxFit.fill
      //                           )
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //
      //                 //SizedBox(height: 10,),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Row(
      //                     children: [
      //                       Text1(max: 12, data: '${bModal.name}', min: 12,weight: FontWeight.w600,),
      //                       SizedBox(width:10),
      //                       bModal.verified?Icon(Icons.verified,size: 13,color: Color(0xff34B7F1),):SizedBox()
      //                     ],),
      //                 ),
      //                 //SizedBox(height:5),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     rating(),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${bModal.city}', min: 10,clr: Colors.black54,),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${bModal.state}', min: 10,clr: Colors.black54,),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${(distanceInMeters/1000).toStringAsFixed(2)} KM', min: 10,clr: Colors.black54,),
      //                   ],
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   crossAxisAlignment: CrossAxisAlignment.end,
      //                   children: [
      //                     RaisedButton(
      //                       color: Colors.orangeAccent,
      //                         onPressed: (){
      //                           Get.toNamed('/profile?puid=${bModal.uid}');
      //                         },
      //                         child: Text("Book",style: TextStyle(color: Colors.white),),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //
      //         ],
      //       ),
      //     ),
      //   ),
      //   child: Expanded(
      //     child: Container(
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.circular(20),
      //           boxShadow: [
      //             BoxShadow(
      //               color: Color(0xffFCAB29),
      //               blurRadius: 1.0,
      //               spreadRadius: 0.0,
      //               offset: Offset(2.0, 2.0), //shadow direction: bottom right
      //             )
      //           ]
      //
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(8),
      //             child: Column(
      //               mainAxisSize: MainAxisSize.min,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     Container(
      //                       height: ResponsiveWidget.isMobileLarge(context)?100:ResponsiveWidget.isMediumScreen(context)?200:150,
      //                       width: ResponsiveWidget.isMobileLarge(context)?150:ResponsiveWidget.isMediumScreen(context)?200:150,
      //                       decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(20),
      //                           boxShadow: [BoxShadow(color: Colors.white,blurRadius: 20)],
      //                           color: Colors.white,
      //                           shape: BoxShape.rectangle,
      //                           image: DecorationImage(
      //                               image: NetworkImage('${bModal.image}'),
      //                               fit: BoxFit.fill
      //                           )
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //
      //                 //SizedBox(height: 15,),
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Row(
      //                     children: [
      //                       Text1(max: 12, data: '${bModal.name}', min: 12,weight: FontWeight.w600,),
      //                       SizedBox(width:10),
      //                       bModal.verified?Icon(Icons.verified,size: 13,color: Color(0xff34B7F1),):SizedBox()
      //                     ],),
      //                 ),
      //                 //SizedBox(height:10),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                   children: [
      //                     rating(),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${bModal.city}', min: 10,clr: Colors.black54,),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${bModal.state}', min: 10,clr: Colors.black54,),
      //                     //SizedBox(width:10),
      //                     Icon(Icons.circle,color: Colors.black54,size: 2,),
      //                     //SizedBox(width:10),
      //                     Text1(max: 10, data: '${(distanceInMeters/1000).toStringAsFixed(2)} KM', min: 10,clr: Colors.black54,),
      //                   ],
      //                 ),
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.end,
      //                   crossAxisAlignment: CrossAxisAlignment.end,
      //                   children: [
      //                     RaisedButton(
      //                       color: Colors.orangeAccent,
      //                       onPressed: (){
      //                         Get.toNamed('/profile?puid=${bModal.uid}');
      //                       },
      //                       child: Text("Book",style: TextStyle(color: Colors.white),),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
  Widget rating(){
    var swastik = bModal.swastik;
    int? rates = bModal.raters;
    double? overall_rate=swastik!/rates!;
    if(overall_rate!>=4){
      return newrate(overall_rate,Colors.green);
    }
    if(overall_rate >=3 && overall_rate<4){
      return  newrate(overall_rate,Colors.orangeAccent);
    }
    return  newrate(overall_rate>=0?bModal.swastik!:0, Colors.green);



  }

  Container newrate(double overall_rate,Color clr) {
    return Container(
      decoration: BoxDecoration(
        color: clr,
        borderRadius: BorderRadius.circular(5),),
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      child: Row(children: [
        Icon(Icons.star,color:Colors.white,size:12),
        SizedBox(width:2),
        Text1(max: 12, data: overall_rate==0.0?'5.0':'${overall_rate.toStringAsFixed(1)}', min: 11,clr: Colors.white,)
      ],),
    );
  }
}








class TopBarItemCard extends StatelessWidget {
  const TopBarItemCard({
    Key? key,
    required this.topBarItem,
  }) : super(key: key);

  final TopBarItem topBarItem;

  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width;
    return Link(
        uri: Uri.parse('http://pujapurohit.in/#/${topBarItem.tap}'),
        target: LinkTarget.blank,
        builder: (context,followlink){
          return InkWell(
            onTap: followlink,
            child:Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffFCAB29),
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                  color: Color(0xffFFFAF4),
                borderRadius: BorderRadius.circular(20)
              ),
              height: ResponsiveWidget.isSmallScreen(context)?130:200,
              width: ResponsiveWidget.isSmallScreen(context)?130: 200,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    //Text(topBarItem.name),
                    SizedBox(height: ResponsiveWidget.isSmallScreen(context)?8:10,),
                    Container(
                      height: ResponsiveWidget.isSmallScreen(context)?80:100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(topBarItem.image),
                          )
                      ),
                      //child: Image.asset(topBarItem.image)
                    ),
                    SizedBox(height: ResponsiveWidget.isSmallScreen(context)?8:10,),
                    Text(
                        topBarItem.name,
                        style:Theme.of(context).textTheme.headline6!.copyWith(
                          //fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width >= 800?20:ResponsiveWidget.isSmallScreen(context)?10:15,
                          color: Colors.black,
                        )
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}