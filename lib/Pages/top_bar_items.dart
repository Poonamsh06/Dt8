class TopBarItem{
  final String name,image,tap;
  TopBarItem({required this.image, required this.name, required this.tap});
}

final List<TopBarItem> topBarItem = [
  TopBarItem(
      image:"images/calander.png",
      name:'Calender',
      tap:'calender',
  ),
  TopBarItem(
    image:"images/pujan_vidhi.png",
    name:'Pujan Vidhi',
    tap:'pujanvidhi',
  ),
  TopBarItem(
    image:"images/f.png",
    name:'Facts/Article',
    tap:'article',
  ),
  TopBarItem(
    image:"images/m.png",
    name:'Muhurat',
    tap:'muhurat',
  )

];