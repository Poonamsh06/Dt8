import 'package:pujapurohit/Utils/constantStrings.dart';

class TopBarItem{
  final String name,image,tap;
  TopBarItem({required this.image, required this.name, required this.tap});
}

final List<TopBarItem> topBarItem = [
  TopBarItem(
      image:calenderLink,
      name:calender,
      tap:smallcalender,
  ),
  TopBarItem(
    image:"images/pujan_vidhi.png",
    name:pujanVidhiLang1,
    tap:pujanVidhi1,
  ),
  TopBarItem(
    image:"images/f.png",
    name:factsArtical,
    tap:artical,
  ),
  TopBarItem(
    image:"images/m.png",
    name:muhurat,
    tap:smallMuhurat,
  )

];