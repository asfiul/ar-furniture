import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class AR_Vision extends StatefulWidget {
  String item_images;
  AR_Vision({this.item_images});

  @override
  _AR_VisionState createState() => _AR_VisionState();
}

class _AR_VisionState extends State<AR_Vision> {
  //AR CODE--------------
  ArCoreController arCoreController;

  void whenARCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    arCoreController.onPlaneTap = controlOnPlaneTap;
  }

  void controlOnPlaneTap(List<ArCoreHitTestResult> results) {
    final hit = results.first;
    addItemImagetoScene(hit);
  }

  Future addItemImagetoScene(ArCoreHitTestResult hitTestResult) async {
    final bytes =
        (await rootBundle.load(widget.item_images)).buffer.asUint8List();

    final imageItem = ArCoreNode(
      image: ArCoreImage(bytes: bytes, width: 600, height: 600),
      position: hitTestResult.pose.translation + vector.Vector3(0.0, 0.0, 0.0),
      rotation:
          hitTestResult.pose.rotation + vector.Vector4(0.0, 0.0, 0.0, 0.0),
    );
    arCoreController.addArCoreNodeWithAnchor(imageItem);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArCoreView(
        onArCoreViewCreated: whenARCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }
}
