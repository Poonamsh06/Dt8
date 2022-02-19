import 'package:pujapurohit/Imports.dart';

class ItemsModel {
  var discount;
  var userDiscount;
  ItemsModel({this.discount,this.userDiscount});

  ItemsModel.fromSnapshot(DocumentSnapshot snapshot) {
    discount  = snapshot.get('discount');
    userDiscount = snapshot.get('userDiscount');
  }
}