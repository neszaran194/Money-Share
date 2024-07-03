import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneysharesau/Views/moneyshare_home_ui.dart';

class MoneyshareSplashScreenUi extends StatefulWidget {
  const MoneyshareSplashScreenUi({super.key});

  @override
  State<MoneyshareSplashScreenUi> createState() =>
      _MoneyshareSplashScreenUiState();
}

class _MoneyshareSplashScreenUiState extends State<MoneyshareSplashScreenUi> {

  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context, MaterialPageRoute(
            builder: (context) => MoneyshareHomeUi(),
            )
        );
      }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Create by ID: xxxxxxxxx',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.042
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.003,
                ),
                Text(
                  'Southeast Asia University',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.042
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                )
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/money.png',
                  width: MediaQuery.of(context).size.width * 0.35,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Money Share',
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 5.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
