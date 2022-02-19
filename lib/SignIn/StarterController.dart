import 'package:pujapurohit/Imports.dart';

class StarterController extends GetxController{
   Rx<bool> skip= false.obs;

   updateValue(){
     skip.update((val) {
       skip.value = false;
     });
   }
   updateValuetrue(){
     skip.update((val) {
       skip.value =true;
     });
   }
}