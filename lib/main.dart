import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart'; // Import this package

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]); // Set preferred orientation
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Locator Nigeria',
      home: BankLocatorScreen(),
    );
  }
}

// Step 3: Create the BankLocatorScreen widget
class BankLocatorScreen extends StatefulWidget {
  @override
  _BankLocatorScreenState createState() => _BankLocatorScreenState();
}

class _BankLocatorScreenState extends State<BankLocatorScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bank Locator Nigeria'),
        ),
        body: const GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,
        ));
  }
}
