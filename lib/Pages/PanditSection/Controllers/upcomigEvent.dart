

import 'package:pujapurohit/Imports.dart';

class UpcomingEventController extends GetxController{
Rxn<List<UpcomingEventModel>> upcomingList = Rxn<List<UpcomingEventModel>>();

  List<UpcomingEventModel>? get upcomings => upcomingList.value;
@override
void onInit(){
    upcomingList.bindStream(upComingStream()); 
    super.onInit();
}
 Stream<List<UpcomingEventModel>> upComingStream() {
    return FirebaseFirestore.instance
        .collection("PujaPurohitFiles")
        .doc("commonCollections")
        .collection("upcoming").orderBy("num",descending:true).limit(10)
        .snapshots()
        .map((QuerySnapshot query) {
      List<UpcomingEventModel> retVal = [];
      query.docs.forEach((element) {
        retVal.add(UpcomingEventModel.fromSnapshot(element));
      });
      return retVal;
    });
  }
}