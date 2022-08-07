import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF131213),
        body: ListView(
            // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            physics: BouncingScrollPhysics(),
            children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 75, 20, 35),
            child: Text(
              "Try Premium free for 1 month",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'gontham1',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0),
                            topRight: Radius.circular(0)),
                        color: Color(0xFF2c2b29),
                      ),
                      width: 135,
                      height: 130,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "FREE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Ad breaks",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              topLeft: Radius.circular(0)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF045b47).withOpacity(0.9),
                                Color(0xFF19b974).withOpacity(1),
                              ])),
                      width: 135,
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "PREMIUM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Ad-free music listening",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0),
                            topRight: Radius.circular(0)),
                        color: Color(0xFF2c2b29),
                      ),
                      width: 135,
                      height: 130,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "FREE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Streaming only",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              topLeft: Radius.circular(0)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF045b47).withOpacity(0.9),
                                Color(0xFF19b974).withOpacity(1),
                              ])),
                      width: 135,
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "PREMIUM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 5),
                            width: double.maxFinite,
                            child: Text(
                              "Download songs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0),
                            topRight: Radius.circular(0)),
                        color: Color(0xFF2c2b29),
                      ),
                      width: 135,
                      height: 130,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "FREE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Listen alone",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(0),
                              topLeft: Radius.circular(0)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF045b47).withOpacity(0.9),
                                Color(0xFF19b974).withOpacity(1),
                              ])),
                      width: 135,
                      height: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(7),
                            width: double.maxFinite,
                            child: Text(
                              "PREMIUM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'gontham1',
                                  fontSize: 11,
                                  color: Colors.white70),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 10),
                            width: double.maxFinite,
                            child: Text(
                              "Group session",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'gontham2',
                                fontSize: 17,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      height: 45,
                      width: 160,
                      child: Center(
                        child: Text(
                          "GET PREMIUM",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'gontham2',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text:
                      'From ₹119/month after. Offer only for users who are new to Premium.',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'gontham1',
                      color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Terms and condition apply.",
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'gontham1',
                          color: Colors.white),
                    ),
                  ])),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFF2c2b29),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 65,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        "Spotify Free",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'gontham2',
                            color: Colors.white),
                      )),
                  Spacer(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35.0),
                      child: Text(
                        "CURRENT PLAN",
                        style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'gontham1',
                            color: Colors.grey),
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Premiumindividual(),
          SizedBox(
            height: 30,
          ),
          PremiumDuo(),
          SizedBox(
            height: 30,
          ),
          PremiumFamily(),
              SizedBox(
            height: 30,
          ),
          PremiumStudent(),
              SizedBox(
            height: 30,
          ),
          mini(),
        ]));
  }
}

Widget Premiumindividual() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
        // height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2c2b29),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF045b47).withOpacity(0.9),
                  Color(0xFF19b974).withOpacity(0.9),
                ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Premium Individual",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'gontham2',
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "Free",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'gontham2',
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nFOR 1 MONTH",
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    fontFamily: 'gontham1',
                                    color: Colors.white),
                              )
                            ])),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Ad-free music listening ⦁ Downlaod to\nlisten offline ⦁ Debit and credit cards\naccepted',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'gontham1',
                      wordSpacing: 0.5,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "VIEW PLANS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'gontham2',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                      'Offer only for users who are new to Premium.',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'gontham1',
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Terms and condition apply.",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'gontham1',
                              color: Colors.white),
                        ),
                      ])),
            ],
          ),
        )),
  );
}


Widget PremiumDuo() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
        // height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2c2b29),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF5991c1).withOpacity(01),
                  Color(0xFF4f72a7).withOpacity(01),
                  Color(0xFF403e79).withOpacity(1),
                ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Premium Duo",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'gontham2',
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "Free",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'gontham2',
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nFOR 1 MONTH",
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    fontFamily: 'gontham1',
                                    color: Colors.white),
                              )
                            ])),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  '2 Premium accounts ⦁ For couples who'
                      '\nlive together ⦁ Ad-free music listening ⦁'
                      '\nDownlaod 10,000 songs/device, on up'
                      '\nto 5 devices per account ⦁ Choose 1,3,'
                      '\n6 or 12 months of Premium ⦁ Debit and'
                      '\ncredit cards accepted',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'gontham1',
                      wordSpacing: 0.5,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "VIEW PLANS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'gontham2',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                      'Offer only for users who are new to Premium.',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'gontham1',
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Terms and condition apply.",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'gontham1',
                              color: Colors.white),
                        ),
                      ])),
            ],
          ),
        )),
  );
}


Widget PremiumFamily() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
        // height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2c2b29),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF233366).withOpacity(01),
                  // Color(0xFF4f72a7).withOpacity(01),
                  Color(0xFFac2891).withOpacity(1),
                ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Premium Family",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'gontham2',
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "Free",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'gontham2',
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nFOR 1 MONTH",
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    fontFamily: 'gontham1',
                                    color: Colors.white),
                              )
                            ])),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Ad-free music listening ⦁ Choose 1,3,'
                      '\n6 or 12 months of Premium ⦁ Debit and'
                      '\ncredit cards accepted',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'gontham1',
                      wordSpacing: 0.5,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "VIEW PLANS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'gontham2',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                      'Offer only for users who are new to Premium.',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'gontham1',
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Terms and condition apply.",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'gontham1',
                              color: Colors.white),
                        ),
                      ])),
            ],
          ),
        )),
  );
}


Widget PremiumStudent() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
        // height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2c2b29),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFf39923).withOpacity(01),
                  // Color(0xFF4f72a7).withOpacity(01),
                  Color(0xFFba774d).withOpacity(0.9),
                ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Premium Student",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'gontham2',
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "Free",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'gontham2',
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nFOR 1 MONTH",
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    fontFamily: 'gontham1',
                                    color: Colors.white),
                              )
                            ])),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Ad-free music listening ⦁ Download to'
                  '\nlisten offline',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'gontham1',
                      wordSpacing: 0.5,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16,),
               GestureDetector(
                 onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "VIEW PLANS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'gontham2',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                      'Offer available only to students at an accredited higher'
                          '\neducation institution.',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'gontham1',
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Terms and condition apply.",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'gontham1',
                              color: Colors.white),
                        ),
                      ])),
            ],
          ),
        )),
  );
}

Widget mini() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: Container(
        // height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF2c2b29),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF4e99f3).withOpacity(01),
                  // Color(0xFF4f72a7).withOpacity(01),
                  Color(0xFF2b45a6).withOpacity(1),
                ])),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Premium Student",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'gontham2',
                          color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: RichText(
                        textAlign: TextAlign.end,
                        text: TextSpan(
                            text: "From ₹7",
                            style: TextStyle(
                                fontSize: 21,
                                fontFamily: 'gontham2',
                                color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: "\nFOR 1 DAY",
                                style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0.5,
                                    fontFamily: 'gontham1',
                                    color: Colors.white),
                              )
                            ])),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  '1 day and 1 week plans ⦁ Ad-free music'
                      '\non mobile ⦁ Download 30 songs on 1'
                      '\n mobile device ⦁ Mobile only plan',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'gontham1',
                      wordSpacing: 0.5,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 16,),
              GestureDetector(
                onTap:()=>launchUrlString('https://www.spotify.com/in-en/plan/individual'),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text(
                      "VIEW PLANS",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'gontham2',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                      'Offer available only to students at an accredited higher'
                          '\neducation institution.',
                      style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'gontham1',
                          color: Colors.white70),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Terms and condition apply.",
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'gontham1',
                              color: Colors.white),
                        ),
                      ])),
            ],
          ),
        )),
  );
}

