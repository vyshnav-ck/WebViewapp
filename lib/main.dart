import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteButton extends StatelessWidget {
  final String url;

  WebsiteButton({required this.url});

  _launchWebsite() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchWebsite,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'VISIT YIASCM.IN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Website Redirect Button'),
      ),
      body: Center(
        child: WebsiteButton(url: 'https://yiascm.in/'),
      ),
    ),
  ));
}


