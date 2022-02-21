import 'package:pujapurohit/Utils/Imports.dart';

class ButtonContainers extends StatelessWidget {
  ButtonContainers({
    Key? key,
    required this.data,
    required this.color,
    required this.color2,
  }) : super(key: key);

  final String data;
  var color;
  var color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.orangeAccent
        ),
        color: color,
      ),
      padding: EdgeInsets.all(10),
      child: Text1(data: data, max: 12, min: 10,weight: FontWeight.w600,clr: color2,),
    );
  }
}

class PaddedDottedLine2 extends StatelessWidget {
  const PaddedDottedLine2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 30,
        lineThickness: 1.5,
        dashLength: 2.0,
        dashColor: Colors.grey,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}

class PaddedDottedLine extends StatelessWidget {
  PaddedDottedLine({
    Key? key,
    required this.bookingDetailController,
    required this.dashColorCondition,
  }) : super(key: key);

  final BookingDetailController bookingDetailController;
  var dashColorCondition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: DottedLine(
        direction: Axis.vertical,
        lineLength: 30,
        lineThickness: 1.5,
        dashLength: 2.0,
        dashColor: dashColorCondition!?Colors.orangeAccent:Colors.grey,
        dashRadius: 0.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
    );
  }
}