import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
    show ArCoreController;
import 'package:home_interior_furniture/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  print('ARCORE IS AVAILABLE');
  print(await ArCoreController.checkArCoreAvailability());

  print('\n AR SERVICES INSTALLED?');
  print(await ArCoreController.checkIsArCoreInstalled());

  runApp(MyApp());
}
