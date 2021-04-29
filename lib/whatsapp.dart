import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';

class WhatsAppRun extends StatefulWidget {
  @override
  _WhatsAppRunState createState() => _WhatsAppRunState();
}

class _WhatsAppRunState extends State<WhatsAppRun> {
  @override
  initState() {
    super.initState();
  }

  void whatsAppOpen() async {
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWathsApp(
          phone: "9461246324", message: "Hello, flutter_launch");
    } else {
      print("Whatsapp not Installed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WhatsAppRun();
  }
}
