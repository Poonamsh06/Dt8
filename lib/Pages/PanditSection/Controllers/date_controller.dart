
import 'package:pujapurohit/Utils/Imports.dart';

class DateController extends GetxController{
  Rx<HinduDateModel> userModel = HinduDateModel().obs;
  var month = int.parse('${DateFormat.M().format(DateTime.now())}').obs;

  @override
  void onInit(){
    initializeUserModel();
   
    super.onInit();
  }
  @override
  void onClose(){
    super.onClose();
  }
  initializeUserModel()  async{
    userModel.value =await FirebaseFirestore.instance
        .collection('PujaPurohitFiles')
        .doc('hinduDate')
        .get()
        .then((doc) => HinduDateModel.fromSnapshot(doc));
  }

 
}

