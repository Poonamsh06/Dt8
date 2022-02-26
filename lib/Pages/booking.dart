

import 'package:flutter/cupertino.dart';
import 'package:pujapurohit/Utils/Imports.dart';



class Booking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
    AuthController authController = Get.find();
    BookingDetailController bookingDetailController = Get.put(BookingDetailController());
   return Scaffold(
     key: _key,
     endDrawer: Drawer(
      child: Obx((){
        return Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text1(data: "Order : #${bookingDetailController.bookingModel.value.bookingId}", max: 18, min: 16,weight: FontWeight.bold,),
              SizedBox(height: 10,),
              DottedLine(
                direction: Axis.horizontal,
                lineLength: double.infinity,
                lineThickness: 1.5,
                dashLength: 2.0,
                dashColor: Colors.grey,
                dashRadius: 0.0,
                dashGapLength: 4.0,
                dashGapColor: Colors.transparent,
                dashGapRadius: 0.0,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color: Colors.orangeAccent,),
                  SizedBox(width: 10,),
                  Text1(data: bookingString, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                  SizedBox(width: 10,),
                  InkWell(
                      onTap: (){
                        Get.defaultDialog(backgroundColor: Colors.white,title:"Info",middleText: bookingDialogMessage,middleTextStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontSize: 12,wordSpacing: 1.5));
                      },
                      child: Icon(CupertinoIcons.question_circle,color: Colors.grey,size: 16,))
                ],
              ),
              PaddedDottedLine(bookingDetailController: bookingDetailController, dashColorCondition: bookingDetailController.bookingModel.value.rejected),
              Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color: bookingDetailController.bookingModel.value.rejected!?Colors.redAccent:bookingDetailController.bookingModel.value.request!?Colors.orangeAccent:Colors.grey,),
                  SizedBox(width: 10,),
                  Text1(data: bookingDetailController.bookingModel.value.rejected!?bookingDecline:bookingDetailController.bookingModel.value.request!?bookingAccept:bookingPending, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                  SizedBox(width: 10,),
                  InkWell(
                      onTap: (){
                        bookingDetailController.bookingModel.value.rejected!?Get.defaultDialog(backgroundColor: Colors.white,title:"Info",middleText: rejectedBookingMessage,middleTextStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontSize: 12,wordSpacing: 1.5))
                        :bookingDetailController.bookingModel.value.request!?Get.defaultDialog(backgroundColor: Colors.white,title:"Info",middleText: acceptedBookingMessage,middleTextStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontSize: 12,wordSpacing: 1.5)):
                        Get.defaultDialog(backgroundColor: Colors.white,title:"Info",middleText: waitingBookingMessage,middleTextStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontSize: 12,wordSpacing: 1.5))
                        ;
                      },
                      child: Icon(CupertinoIcons.question_circle,color: Colors.grey,size: 16,))
                ],
              ),
              PaddedDottedLine(bookingDetailController: bookingDetailController, dashColorCondition: bookingDetailController.bookingModel.value.request),
              Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color:bookingDetailController.bookingModel.value.payment!?Colors.orangeAccent: Colors.grey,),
                  SizedBox(width: 10,),
                  Text1(data:Confirmation, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                  SizedBox(width: 10,),
                  InkWell(
                      onTap: (){
                        Get.defaultDialog(backgroundColor: Colors.white,title:"Info",middleText:bookingDetailController.bookingModel.value.payment!?"Booking Confirmed from your end" :"Confirm your booking by choosing your payment method.",middleTextStyle: GoogleFonts.aBeeZee(color: Colors.black54,fontSize: 12,wordSpacing: 1.5));
                      },
                      child: Icon(CupertinoIcons.question_circle,color: Colors.grey,size: 16,))
                ],
              ),
              PaddedDottedLine(bookingDetailController: bookingDetailController,dashColorCondition: bookingDetailController.bookingModel.value.payment,),
             bookingDetailController.bookingModel.value.samagri!?Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text1(data:SamagriDelivery, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                ],
              ):SizedBox(),
              bookingDetailController.bookingModel.value.samagri!?PaddedDottedLine2():SizedBox(),
              Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text1(data: completed, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                ],
              ),
              PaddedDottedLine2(),
              Row(
                children: [
                  Icon(CupertinoIcons.map_pin_ellipse,color: Colors.grey,),
                  SizedBox(width: 10,),
                  Text1(data: rateNow, max: 14, min: 12,clr: Colors.black54,weight: FontWeight.w400,),
                ],
              ),

            ],
          ),
        );
      })
     ),
     body: SafeArea(
       child: Padding(
         padding:  EdgeInsets.only(top: height*0.05,left: width*0.06,right: width*0.06),
         child: Column(
           children: [
              Text1(data: orders, max: 24, min: 22,clr: Colors.black,weight: FontWeight.bold,),
             SizedBox(height: 20,),

             GetX<BookingController>(
               init: Get.put<BookingController>(BookingController(uid: authController.user!.uid)),
               builder: (BookingController trendingController) {
                 if (trendingController != null && trendingController.serviceTop != null) {
                   return ListView.builder(
                     scrollDirection: Axis.vertical,
                     shrinkWrap: true,
                     itemCount: trendingController.serviceTopList.value!.length,
                     itemBuilder: (_, index) {
                       return BookingCard(width,trendingController.serviceTop![index],(){_key.currentState!.openEndDrawer();},bookingDetailController);
                     },
                   );
                 } else {
                   return Center(child: SizedBox(
                       height: 50,width: 50,
                       child: Loader()));
                 }
               },
             )
           ],
         ),
       ),
     ),
   );
  }

  Container BookingCard(double width,BookingModal bookingModal,VoidCallback openDraw,BookingDetailController bookingDetailController) {
    return Container(
             padding: EdgeInsets.all(20),
             margin: EdgeInsets.only(bottom:20),
             width: width,
             decoration: BoxDecoration(
               border: Border.all(
                 color: Colors.grey,
                 width: 0.2
               )
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 100,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage('${bookingModal.service_image}')
                                    )
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text1(data: "${bookingModal.service}", max: 16, min: 14,clr: Colors.black,weight: FontWeight.w600,),
                                      SizedBox(height: 5,),
                                      Text1(data: "Order: #${bookingModal.bookingId} | Fri, Feb 12, 2021, 7:34pm", max: 10, min: 8,clr: Colors.black54,),
                                      SizedBox(height: 5,),
                                      Text1(data: "Purohit: ${bookingModal.pandit}", max: 10, min: 8,clr: Colors.black54,),
                                      SizedBox(height: 5,),
                                      currentStatus(bookingModal),
                                      SizedBox(height: 10),
                                      InkWell(
                                          onTap: (){
                                            print(bookingModal.clientuid);
                                            print(bookingModal.bookingId);
                                            bookingDetailController.initializePanditModel(bookingModal.bookingId,bookingModal.clientuid!);
                                            openDraw();
                                          },
                                          child: Text1(data: viewDetail, max: 12, min: 10,weight: FontWeight.w800,clr: Colors.orangeAccent,))

                                    ],
                                  ))
                            ],
                          ))
                   ],
                 ),
                 SizedBox(height: 20,),
                 PaddedDottedLine2(),
                 SizedBox(height: 10,),
                 Buttons(bookingModal)
               ],
             ),
           );
  }

  Row currentStatus(BookingModal bookingModal) {
    if(bookingModal.request == false){
    return  Row(
        children: [
         Text1(data: bookingModal.rejected!?"Status: Declined": "Status: Requested", max: 10, min: 8,clr: bookingModal.rejected!?Colors.red:Colors.black54,),
          SizedBox(width: 5,),
          InkWell(
              onTap: (){
                Get.snackbar("","",backgroundColor: Colors.black54,snackPosition: SnackPosition.BOTTOM,messageText: Text1(data:bookingModal.rejected!?"Purohit is not available at the requested time.\nSamvad with purohit regarding availability ":"Booking requested purohit will update this within 30 min", max: 12, min: 10,clr: Colors.white,));
              },
              child: Icon(Icons.help_outline,size: 14,color: bookingModal.rejected!?Colors.redAccent:Colors.grey,)),
        ],
      );
    }
    return Row(
      children: [
        Text1(data: "Status: ${bookingModal.status}", max: 10, min: 8,clr: Colors.black54,),
        SizedBox(width: 5,),
        InkWell(
            onTap: (){
              Get.snackbar("","",backgroundColor: Colors.black54,snackPosition: SnackPosition.BOTTOM,messageText: Text1(data: "Booking requested purohit will update this within 30min", max: 12, min: 10,clr: Colors.white,));
              },
            child: Icon(Icons.help_outline,size: 14,color: Colors.grey,)),
      ],
    );
  }

  Widget Buttons(BookingModal bookingModal) {
    if(bookingModal.request == false){
      if(bookingModal.cancel == true){
        return  Row(
          children: [
            ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white,),
            SizedBox(width: 10,),
            ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
          ],
        );
      }
      if(bookingModal.rejected == true){
        if(bookingModal.cancel == true){
          return  Row(
            children: [
          ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
              SizedBox(width: 10,),
              ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
            ],
          );
        }
       return Row(
         children: [
           Container(
             width: 100,
             decoration: BoxDecoration(
                 border: Border.all(
                     color: Colors.orangeAccent
                 ),
                 color: Colors.white
             ),
             padding: EdgeInsets.all(10),
             child: Row(
               children: [
                 Icon(CupertinoIcons.chat_bubble_2,color: Colors.orangeAccent,size: 20,),
                 SizedBox(width: 5,),
                 Text1(data: samvad, max: 12, min: 10,weight: FontWeight.w600,clr: Colors.orangeAccent,),
               ],
             ),
           ),
           SizedBox(width: 10,),
           ButtonContainers(data: help,color: Colors.orangeAccent,color2: Colors.white),
         ],
       );
      }
    return
     Text1(data: purohitConformation, max: 14, min: 12,clr: Colors.grey,);
    }
    if(bookingModal.request == true){
        if(bookingModal.cancel == true){
          return  Row(
            children: [
              ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
              SizedBox(width: 10,),
              ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
            ],
          );
        }
      if(bookingModal.payment == true){
        if(bookingModal.cancel == true){
          return  Row(
            children: [
              ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
              SizedBox(width: 10,),
              ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
            ],
          );
        }
        if(bookingModal.puja_status == true){
          if(bookingModal.cancel == true){
            return  Row(
              children: [
                ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
                SizedBox(width: 10,),
                ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
              ],
            );
          }
          return Row(
            children: [
              ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
              SizedBox(width: 10,),
              ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
              Spacer(),
             bookingModal.rating!?SizedBox():ButtonContainers(data: ratePurohit,color: Colors.white,color2: Colors.orangeAccent),
            ],
          );
        }
        return Row(
          children: [
            Text1(data: "PUROHIT OTP : ${bookingModal.otp}", max: 14, min: 12,clr: Colors.redAccent,),
            Spacer(),
            ButtonContainers(data: cancel,color: Colors.white,color2: Colors.orangeAccent),
          ],
        );
      }
        return  Row(
        children: [
          InkWell(
            onTap: (){
              Get.to(

                RazorPayWeb(
                bookingId: bookingModal.bookingId,
                uid: bookingModal.clientuid,
                bookingModal: bookingModal,cod:false
              ));
              //Get.to(WebViewTest());
            },
            child: ButtonContainers(data: payOnline,color: Colors.orangeAccent,color2: Colors.white),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: (){
              Get.to(RazorPayWeb(
                  bookingId: bookingModal.bookingId,
                  uid: bookingModal.clientuid,
                  bookingModal: bookingModal,cod:true
              ));
            },
            child: ButtonContainers(data: "CAH",color: Colors.white,color2: Colors.orangeAccent),
          ),
          Spacer(),
          ButtonContainers(data: cancel,color: Colors.white,color2: Colors.orangeAccent),
        ],
      );
    }

      return  Row(
        children: [
          ButtonContainers(data: reorder,color: Colors.orangeAccent,color2: Colors.white),
          SizedBox(width: 10,),
          ButtonContainers(data: help,color: Colors.white,color2: Colors.orangeAccent),
        ],
      );



  }

}



