import 'package:pujapurohit/Utils/Imports.dart';
import 'top_bar_items.dart';

class Topbar2 extends StatelessWidget {
  AuthController authController = Get.find();
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        //color: darkColor.withOpacity(0.66),
        image: DecorationImage(
          image: AssetImage(ResponsiveWidget.isSmallScreen(context)?"images/Rectangle_30.png":"images/banner_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap:()async{
                    Get.toNamed('/home');
                  },
                  child: Image.asset(
                    "assets/images/logo.png",
                    height:ResponsiveWidget.isSmallScreen(context)?70:ResponsiveWidget.isMediumScreen(context)? 100:138,
                    width:ResponsiveWidget.isSmallScreen(context)?90:ResponsiveWidget.isMediumScreen(context)? 120:148,),
                ),
                Container(
                  width: ResponsiveWidget.isSmallScreen(context)?150:ResponsiveWidget.isMobileLarge(context)?250:ResponsiveWidget.isMediumScreen(context)?400:800,
                  height: ResponsiveWidget.isLargeScreen(context)?40:ResponsiveWidget.isMediumScreen(context)?30:20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.orangeAccent),
                      borderRadius: BorderRadius.all(Radius.circular(5),
                      )
                  ),

                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: searchPujaText,
                      hintStyle: TextStyle(color: Colors.black45,fontSize: ResponsiveWidget.isLargeScreen(context)?20:ResponsiveWidget.isMediumScreen(context)?15:0),
                      prefix: SizedBox(width: 20,),
                      suffixIcon: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: ResponsiveWidget.isLargeScreen(context)?30:ResponsiveWidget.isMediumScreen(context)?20:10,),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 15,),
                        authController.user!=null?
                        InkWell(
                          onTap: (){
                            Get.toNamed('/account');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: !ResponsiveWidget.isSmallScreen(context)?10:15),
                              Text("Hello, ${authController.user!.displayName}",style: Theme.of(context).textTheme.headline5!.copyWith(
                                //fontSize: ResponsiveWidget.isDesktop(context)?20:ResponsiveWidget.isTablet(context)?15:10,
                                  fontSize: ResponsiveWidget.isMobileLarge(context)?10:ResponsiveWidget.isMediumScreen(context)?15:20,
                                  color: Color(0xffB10060),
                                  letterSpacing: 1
                              ),),
                            ],
                          ),
                        )
                            :
                        InkWell(
                          onTap: (){
                            loginController.signin();
                            Get.to(Auth());
                          },
                          child: Text("Sign Out",style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontSize: ResponsiveWidget.isLargeScreen(context)?20:ResponsiveWidget.isMediumScreen(context)?15:10,
                              color: Color(0xffB10060),
                              letterSpacing: 1
                          ),),
                        ),
                      ],
                    )
                ),

              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.width>=900?50:ResponsiveWidget.isSmallScreen(context)?0:ResponsiveWidget.isMobileLarge(context)?10:0,),
            bannerInsider(),
          ],
        ),
      ),
    );
  }
}
class Topbar3 extends StatelessWidget {
  AuthController authController = Get.find();
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {

    return Padding(
      //padding: EdgeInsets.only(left:ResponsiveWidget.isMediumScreen(context)? 0:MediaQuery.of(context).size.width*0.15,right:ResponsiveWidget.isMediumScreen(context)? 0: MediaQuery.of(context).size.width*0.2,),
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          //color: darkColor.withOpacity(0.66),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(ResponsiveWidget.isSmallScreen(context)?"images/Rectangle_30.png":"images/banner_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //SizedBox(height: MediaQuery.of(context).size.width>=900?50:ResponsiveWidget.isSmallScreen(context)?0:ResponsiveWidget.isMobileLarge(context)?10:0,),
              bannerInsider(),
            ],
          ),
        ),
      ),
    );
  }
}

class bannerInsider extends StatelessWidget {
  const bannerInsider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerText(sizeMobile: 17,sizeMobileLarge: 30,sizeTablet: 45,sizeDesktop: 55,bannerText: bannerMainText,),
            BannerText(sizeMobile: 6,sizeMobileLarge: 12,sizeTablet: 15,sizeDesktop: 20,bannerText: bannerSecondText,),
            SizedBox(height: MediaQuery.of(context).size.width>=600?30:10,),
            Row(
              children: [
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: (){},
                  color: Colors.white,
                  child: Text(
                    "View All Services>",
                    style: TextStyle(
                      fontSize: ResponsiveWidget.isMobileLarge(context)?15:20,
                      color: Color(0xffF19220),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        //Image.network("https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/website%2FGroup%202.png?alt=media&token=c9dafa09-2684-4d1b-ad1b-1452d800b13d")

        Container(
          //color: Color(0xffFFEBD3).withOpacity(0.5),
          //margin: EdgeInsets.only(top: Get.height*0.1),
            alignment: Alignment.center,
            //width: ResponsiveWidget.isMobile(context)?100:400,
            width: ResponsiveWidget.isMobileLarge(context)?150:ResponsiveWidget.isMobileLarge(context)?200:MediaQuery.of(context).size.width>800 && MediaQuery.of(context).size.width<900?200:400,
            //height:ResponsiveWidget.isMobile(context)?70:ResponsiveWidget.isTablet(context)?200: 300,
            height: ResponsiveWidget.isMobileLarge(context)?150:ResponsiveWidget.isMediumScreen(context)?250:300,
            child: Image.network("https://firebasestorage.googleapis.com/v0/b/flutter-bf503.appspot.com/o/website%2FGroup%202.png?alt=media&token=c9dafa09-2684-4d1b-ad1b-1452d800b13d")
        ),
      ],
    );
  }
}

class TopTabs extends StatelessWidget{
  AuthController authController = Get.find();
  // UserController userController = Get.put(UserController());
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        //color: Color(0xffFFFAF3),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      width: width,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap:(){Get.toNamed('/home');},
                  child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,height: 60,width: 60,),
                ),
                //SizedBox(width:10),


              ],
            ),
            Container(
              width: ResponsiveWidget.isMobileLarge(context)?250:ResponsiveWidget.isMediumScreen(context)?400:800,
              height: ResponsiveWidget.isLargeScreen(context)?40:ResponsiveWidget.isMediumScreen(context)?30:20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.orangeAccent),
                  borderRadius: BorderRadius.all(Radius.circular(5),
                  )
              ),

              child: TextFormField(
                decoration: InputDecoration(
                  hintText: searchPujaText,
                  hintStyle: TextStyle(color: Colors.black38,fontSize: ResponsiveWidget.isLargeScreen(context)?20:ResponsiveWidget.isMediumScreen(context)?15:0),
                  prefix: SizedBox(width: 20,),
                  suffixIcon: InkWell(
                    child: Icon(
                      Icons.search,
                      color: Colors.orangeAccent,
                      size: ResponsiveWidget.isLargeScreen(context)?30:ResponsiveWidget.isMediumScreen(context)?20:10,),
                    onTap: (){},
                  ),
                ),
              ),
            ),
            //ModifiedTextIcon(iconColor: Colors.black54,icondata: LineIcons.search, max: 12, data: 'Search', min: 8,color: Colors.black54,weight: FontWeight.bold,),
            SizedBox(width: 20,),
            authController.user!=null?
            InkWell(
                onTap: (){
                  Get.toNamed('/account');
                },
                child: ResponsiveWidget.isSmallScreen(context)?Icon(Icons.person,color: Color(0xffB10060),):ModifiedTextIcon(iconColor: Color(0xffB10060),icondata: LineIcons.user, max: 12, data: '${authController.user!.displayName}', min: 8,color: Color(0xffB10060),weight: FontWeight.bold))
                :
            InkWell(
              onTap: (){
                loginController.signin();
                Get.to(Auth());

              },
              child: ModifiedTextIcon(iconColor: Color(0xffB10060),icondata: LineIcons.user, max: 12, data: 'Sign In', min: 8,color: Color(0xffB10060),weight: FontWeight.bold),
            ),

            // SizedBox(width: 20,),
            // ModifiedTextIcon(iconColor: Colors.black54,icondata: LineIcons.shoppingBag, max: 12, data: 'Cart', min: 8,color: Colors.black54,weight: FontWeight.bold)
          ],
        ),
      ),
    );
  }

}

class TopBar extends StatelessWidget{
  final String? name;
  final String? image;
  final String? tap;
  TopBar({this.name,this.image,this.tap});
  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse('http://pujapurohit.in/#/$tap'),
      target: LinkTarget.blank,
      builder: (context,followlink){
        return InkWell(
          onTap: followlink,
          hoverColor: Colors.transparent,
          child: HoverWidget(
            onHover: (event){},
            hoverChild:  Container(
              alignment: Alignment.center,
              height:100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      height: ResponsiveWidget.isSmallScreen(context)?28:100,
                      width: ResponsiveWidget.isSmallScreen(context)?28:100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(image!),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    //SizedBox(height:10),
                    Text_3(data: "$name", max: ResponsiveWidget.isSmallScreen(context)?10:14,clr: Colors.white,)
                  ]
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              height:100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      height: ResponsiveWidget.isSmallScreen(context)?28:100,
                      width: ResponsiveWidget.isSmallScreen(context)?28:100,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(image!),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    //SizedBox(height:10),
                    Text_3(data: "$name", max: ResponsiveWidget.isSmallScreen(context)?8:12,clr: Colors.white,)
                  ]
              ),
            ),
          ),
        );
      },
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