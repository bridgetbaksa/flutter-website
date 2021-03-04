import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/landing_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              LandingScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
