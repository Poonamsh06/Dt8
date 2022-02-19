

import 'package:pujapurohit/Imports.dart';

class ImageController extends GetxController{
  final String? uid;
  ImageController({this.uid});
  Rx<ImagesModel> userModel = ImagesModel().obs;


  @override
  void onInit(){
    initializeImagesModel();

    super.onInit();
  }
  @override
  void onClose(){
    super.onClose();
  }
  initializeImagesModel()  async{
    userModel.value =await FirebaseFirestore.instance
        .collection('Avaliable_pundit/$uid/gallery')
        .doc('pics')
        .get()
        .then((doc) => ImagesModel.fromSnapshot(doc));
  }
}