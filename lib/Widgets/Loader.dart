
import 'package:pujapurohit/Utils/Imports.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent,
      body: Center(
        child: Container(
          color: Colors.transparent,
            height: 100,
            width: 100,
            child: FlareActor("assets/images/loader_floating.flr",animation: loading,)
        ),
      ),
    );
  }
}