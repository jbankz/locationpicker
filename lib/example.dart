import 'dart:async';

import 'package:flutter/material.dart';
import 'package:place_picker/place_picker.dart';

class PickerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PickerDemoState();
}

class PickerDemoState extends State<PickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Picker Example')),
      body: Center(
        child: FlatButton(
          child: Text("Pick Delivery location"),
          onPressed: () {
            showPlacePicker();
            TextFormField();
          },
        ),
      ),
    );
  }

  void showPlacePicker() async {
    LocationResult result = await (Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PlacePicker("YOUR API KEY"))) as FutureOr<LocationResult>);

    // Handle the result in your way
    print(result.country?.name);
    print(result.administrativeAreaLevel1?.name);
    print(result.city?.name);
    print(result.formattedAddress);
    print(result.postalCode);
    print(result.locality);
    print(result.name);
    print(result.placeId);
  }
}
