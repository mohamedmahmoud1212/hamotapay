import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:untitled32/view/HomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          onFinish: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
          finishButtonStyle: FinishButtonStyle(
            backgroundColor: HexColor("#5063BF"),
          ),

          // skipTextButton: Text('Skip'),
          trailing: Text('Login'),
          background: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 40, right: 40),
              child: Image.asset('assets/Fast loading-rafiki 1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 40, right: 40),
              child: Image.asset('assets/Mobile payments-rafiki 1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, left: 40, right: 40),
              child: Image.asset('assets/Plain credit card-pana 1.png'),
            )
          ],
          totalPage: 3,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 450,
                  ),
                  Text(
                    'Easy, Fast & Trusted',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Fast money transfer and gauranteed safe\n               transactions with others.',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#878787")),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 450,
                  ),
                  Text(
                    'Free Transactions',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Provides the quality of the financial system\nwith free money transactions without any fees.',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: HexColor("#878787")),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 450,
                  ),
                  Text(
                    'Bills Payment\n  Made Easy',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                  Text('Pay monthly or daily bills at home \n         in a site of TransferMe.',style: TextStyle(fontSize:13 ,fontWeight: FontWeight.w500,color: HexColor("#878787")),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
