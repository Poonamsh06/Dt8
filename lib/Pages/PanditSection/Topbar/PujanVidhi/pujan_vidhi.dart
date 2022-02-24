import 'package:pujapurohit/Utils/Imports.dart';
import 'package:pujapurohit/Utils/constantStrings.dart' as constStrings;

class PujaVidhi extends StatefulWidget {
  @override
  _PujaVidhiState createState() => _PujaVidhiState();
}

class _PujaVidhiState extends State<PujaVidhi> {
  String stateName = 'Bihar';
  // final UserController userController = Get.put(UserController());
  // Future<String> state ()async{
  //   List<Placemark> placemarks = await placemarkFromCoordinates(double.parse('${userController.userModel.value.lat}'),double.parse('${userController.userModel.value.lng}'));
  //   setState(() {
  //     stateName = '${placemarks[1].administrativeArea}';
  //   });
  //   return '${placemarks[1].administrativeArea}';
  // }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final PujanVidhiController pujanVidhiController = Get.put(PujanVidhiController());
    final TextLanguageController textLanguageController = Get.put(TextLanguageController());
    var size = MediaQuery.of(context).size; //this gonna give us total height and with of our device
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(
          size.width,
          height * 0.099,
        ),
        child: TopTabs(),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .35,
            decoration: BoxDecoration(
              //color: Color(0xff1ed1a1)
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Padding(
              //padding:  EdgeInsets.symmetric(horizontal: ResponsiveWidget.isSmallScreen(context)? 20:width*0.1),
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // SizedBox(
                  //   height: 42,
                  // ),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.055,
                          ),
                          Text5(
                            data1: constStrings.pujanVidhiLang1,
                            data2: constStrings.pujanVidhiLang2,
                            data3: constStrings.pujanVidhiLang3,
                            data4: constStrings.pujanVidhiLang4,
                            data5: constStrings.pujanVidhiLang5,
                            data6: constStrings.pujanVidhiLang6,
                            data7: constStrings.pujanVidhiLang7,
                            data8: constStrings.pujanVidhiLang8,
                            data9: constStrings.pujanVidhiLang9,
                            data10: constStrings.pujanVidhiLang10,
                            max: 30,
                            min: 28,
                            clr: Colors.black54,
                            weight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: size.width * .45,
                            height: size.height * 0.15, // it just take 60% of total width
                            child: Text5(
                              data1: constStrings.pujanVidhiDescriptionLang1,
                              data2: constStrings.pujanVidhiDescriptionLang2,
                              data3: constStrings.pujanVidhiDescriptionLang3,
                              data4: constStrings.pujanVidhiDescriptionLang4,
                              data5: constStrings.pujanVidhiDescriptionLang5,
                              data6: constStrings.pujanVidhiDescriptionLang6,
                              data7: constStrings.pujanVidhiDescriptionLang7,
                              data8: constStrings.pujanVidhiDescriptionLang8,
                              data9: constStrings.pujanVidhiDescriptionLang9,
                              data10: constStrings.pujanVidhiDescriptionLang10,
                              max: 12,
                              min: 11,
                              clr: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: size.height * 0.2,
                        width: ResponsiveWidget.isSmallScreen(context) ? size.width * 0.4 : size.width * 0.5,
                        decoration: BoxDecoration(
                          //color: Color(0xFFF2BEA1),
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FProcessing-rafiki%20(2).png?alt=media&token=dc2c3e8a-22f7-4ac3-bb5d-58d02fbab3e9'),
                      ),

                      // Padding(
                      //   //padding: EdgeInsets.only(top:size.height*0.1),
                      //   padding: EdgeInsets.all(8),
                      //   child: Align(
                      //     alignment: Alignment.topRight,
                      //     child: Container(
                      //       alignment: Alignment.center,
                      //       height: size.height*0.2,
                      //       width:ResponsiveWidget.isSmallScreen(context)?size.width*0.4:size.width*0.5,
                      //       decoration: BoxDecoration(
                      //         //color: Color(0xFFF2BEA1),
                      //         shape: BoxShape.circle,
                      //       ),
                      //       child: Image.network('https://firebasestorage.googleapis.com/v0/b/swastik13-8242d.appspot.com/o/NewAppFiles%2Ftopbars%2FProcessing-rafiki%20(2).png?alt=media&token=dc2c3e8a-22f7-4ac3-bb5d-58d02fbab3e9'),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  //SizedBox(height: 10),
                  // Text1(
                  //   data: '',
                  //   max: 12,min: 11,clr: Colors.black54,weight: FontWeight.bold,
                  // ),
                  //   SizedBox(height: 10),

                  // SizedBox(
                  //   width: size.width * .5, // it just take the 50% width
                  //   //height: size.height*0.02,
                  // ),
                  //SizedBox(height: size.height*0.15,),
                  StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance.doc('inventories/listed_puja').snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return Loader();
                        }
                        List<dynamic> mainSamagriList = snapshot.data!.get("listed_samagri");
                        List<Map> pujas = []..shuffle();

                        for (var i in snapshot.data!.get('listed_puja')) {
                          pujas.add(i);
                        }

                        return Expanded(
                            child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GridView.builder(
                                //physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: ResponsiveWidget.isSmallScreen(context)
                                        ? 2
                                        : ResponsiveWidget.isMobileLarge(context)
                                            ? 3
                                            : 4,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: ResponsiveWidget.isSmallScreen(context)
                                        ? 0.85
                                        : ResponsiveWidget.isMobileLarge(context)
                                            ? 1
                                            : 1.5),
                                shrinkWrap: true,
                                itemCount: pujas.length,
                                itemBuilder: (_, index) {
                                  List<dynamic> samgris = pujas[index]['samagri']['$stateName'];
                                  List<dynamic> samagriIdList = [];
                                  List<Samagriss> pujanSamagri = [];
                                  samgris.forEach((element) {
                                    pujanSamagri.add(
                                      Samagriss(
                                          name: SamagriDetails(mainListOfSamagri: mainSamagriList, samagriId: element["id"]).details["name"]
                                              [textLanguageController.langData.value.dataCode],
                                          img: SamagriDetails(mainListOfSamagri: mainSamagriList, samagriId: element["id"]).details["image"],
                                          quantity: element['quantity'],
                                          description: SamagriDetails(mainListOfSamagri: mainSamagriList, samagriId: element["id"])
                                              .details["description"][textLanguageController.langData.value.dataCode]),
                                    );
                                  });

                                  return Obx(() {
                                    return CategoryCard(
                                      clr: "${pujas[index]['bg']}",
                                      title: "${pujas[index]['name'][textLanguageController.langData.value.dataCode]}",
                                      svgSrc: "${pujas[index]['image']}",
                                      press: () {
                                        pujanVidhiController.updateName(
                                            '${pujas[index]['keyword']}',
                                            '${pujas[index]['name'][textLanguageController.langData.value.dataCode]}',
                                            '${pujas[index]['image']}',
                                            '${pujas[index]['avgDuration']}',
                                            '${pujas[index]['description'][textLanguageController.langData.value.dataCode]}',
                                            '${pujas[index]['bg']}',
                                            '$stateName');
                                        pujanVidhiController.updateSamagri(pujanSamagri);
                                        Get.toNamed('/pujanvidhidetail');
                                      },
                                    ) as Widget;
                                  });
                                },
                              ),
                              ResponsiveWidget.isSmallScreen(context) ? MobileBottomBar() : NewBottomBar(),
                            ],
                          ),
                        ));
                      }),
                  //ResponsiveWidget.isSmallScreen(context)?MobileBottomBar():NewBottomBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SamagriDetails {
  final List<dynamic> mainListOfSamagri;
  final String samagriId;

  SamagriDetails({required this.mainListOfSamagri, required this.samagriId});

  Map<dynamic, dynamic> get details {
    List<dynamic> samagriList = [];
    mainListOfSamagri.forEach((element) {
      samagriList.add(element["sid"]);
    });
    if (samagriList.contains(samagriId)) {
      int index = samagriList.indexOf(samagriId);
      return mainListOfSamagri[index];
    }
    return {};
  }
}

class Samagriss {
  final name;
  final img;
  final quantity;
  final description;
  Samagriss({required this.name, required this.img, required this.quantity, required this.description});
}
