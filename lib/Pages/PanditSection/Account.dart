import 'package:flutter/cupertino.dart';
import 'package:pujapurohit/Utils/Imports.dart';

class Account extends StatelessWidget{
  AuthController authController = Get.find();
  void launcher()async{
    var url = playstoreLink;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'carepujapurohit@gmail.com',
      queryParameters: {
        'subject': 'Feedback'
      }
  );
  void sendlauncher()async{
    await launch(_emailLaunchUri.toString());
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor:  Colors.white,
      body: SafeArea(
        child: GetX<AuthController>(
            init: Get.put(AuthController()),
            builder: (AuthController authController){
              if(authController.user == null){
                return Auth();
              }
              return GetX<UserController>(
                init: Get.put(UserController()),
                builder: (UserController userController){
                  return Padding(
                    padding: const EdgeInsets.only(left :12.0,right:12,top:30),
                    child: Column(
                      children: [
                        ListTile(
                            onTap: (){

                            },
                            title: Text('${userController.userModel.value.name}',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${userController.userModel.value.phone}',style: TextStyle(color: Colors.black54,)),
                                Text(updateDetails,style: TextStyle(color: Colors.orangeAccent,fontSize: 12),)
                              ],
                            ),
                            trailing: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage('${userController.userModel.value.photo}'),
                              radius: 30,
                            )
                        ),
                        SizedBox(height: 15,),
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(CupertinoIcons.heart,color: Colors.black),
                          title: Text(fav,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){
                              Get.toNamed('/bookings');
                          },
                          leading: Icon(Icons.shopping_basket,color: Colors.black),
                          title: Text(booking,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(Icons.policy,color: Colors.black),
                          title: Text(termsPolicies,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(Icons.support_agent_outlined,color: Colors.black),
                          title: Text(supportChat,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){

                          },
                          leading: Icon(CupertinoIcons.question_circle,color: Colors.black),
                          title: Text(about,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){
                            sendlauncher();
                          },
                          title: Text(sendFeedback,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){
                            launcher();
                          },
                          title: Text(downloadNow,style: TextStyle(color: Colors.black,)),
                        ),
                        ListTile(
                          onTap: (){
                            authController.signOut();
                          },
                          title: Text(logOut,style: TextStyle(color: Colors.black,)),
                        )
                      ],
                    ),
                  );
                }
              );
            })
      ),
    );
  }

}