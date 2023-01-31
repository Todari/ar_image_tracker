import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ARKitController arKitController;

  @override
  void dispose() {
    arKitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "퇴근하고싶다",
            style: TextStyle(fontSize: 28),
          ),
          centerTitle: true, // Title을 center로 정렬함 (ios는 기본이 center)
        ),
        body: ARKitSceneView(onARKitViewCreated: onARKitViewCreated),
      ),
    );
  }

  void onARKitViewCreated(ARKitController arkitController) {
    this.arKitController = arkitController;
    // final node = ARKitNode(
    //     geometry: ARKitSphere(radius: 0.1), position: Vector3(0, 0, -0.5));
    // this.arKitController.add(node);
  }
}
