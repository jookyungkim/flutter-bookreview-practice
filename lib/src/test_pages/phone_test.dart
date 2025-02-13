import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//final Uri _url = Uri.parse('https://flutter.dev');
final Uri _url = Uri(scheme: "tel", path: "01062825699");

class PhoneTest extends StatelessWidget {
  const PhoneTest({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _launchUrl,
          child: Text('Show Flutter homepage'),
        ),
      ),
    );
  }
}
