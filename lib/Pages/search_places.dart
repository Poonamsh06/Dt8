
import 'package:pujapurohit/Utils/Imports.dart';



class SearchPlaces extends StatefulWidget {
  @override
  _SearchPlacesState createState() => _SearchPlacesState();
}

class _SearchPlacesState extends State<SearchPlaces> {
  String test = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 150),
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                addressAutocomplete,
              ),
              FlutterGooglePlacesWeb(
                apiKey: kGoogleApiKey,
                proxyURL: herokuAPP,
                required: true,
              ),
              TextButton(
                onPressed: () {
                  print(FlutterGooglePlacesWeb.value['name']); // '1600 Amphitheatre Parkway, Mountain View, CA, USA'
                  print(FlutterGooglePlacesWeb.value['streetAddress']); // '1600 Amphitheatre Parkway'
                  print(FlutterGooglePlacesWeb.value['city']); // 'CA'
                  print(FlutterGooglePlacesWeb.value['country']);
                  setState(() {
                    test = FlutterGooglePlacesWeb.value['name'] ?? '';
                  });
                },
                child: Text(pressText),
              ),
              Text(test),
            ],
          ),
        ),
      ),
    );
  }
}