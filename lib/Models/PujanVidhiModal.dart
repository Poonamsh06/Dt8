import 'package:pujapurohit/Utils/Imports.dart';


class PujanVidhiModel {
  var image;
  var name;
  var description;
  var avgDuration;
  var bg;
  var state;
  List<Samagriss>? samagris;
  var keyword;

  PujanVidhiModel({this.bg,this.image,this.name,this.avgDuration,this.description,this.state,this.samagris,this.keyword,});

  // PujanVidhiModel.fromSnapshot(DocumentSnapshot snapshot) {
  //   image  = snapshot.get('image');
  //   name = snapshot.get('name');
  // }
}