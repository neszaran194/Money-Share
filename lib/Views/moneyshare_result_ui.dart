import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class MoneyshareResultUi extends StatefulWidget {

  String? Money;
  String? Person;
  String? Tip;


  MoneyshareResultUi({super.key, this.Money, this.Person, this.Tip});

  @override
  State<MoneyshareResultUi> createState() => _MoneyshareResultUiState();
}

class _MoneyshareResultUiState extends State<MoneyshareResultUi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Money Share Result',
          style: GoogleFonts.itim(),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              child: Image.asset(
                'assets/images/check.png',
                scale: MediaQuery.of(context).size.width * 0.0035,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'จํานวณเงิน  ',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  NumberFormat('#,##0.00').format(double.parse(widget.Money!)),
                  style: GoogleFonts.kanit(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  '  บาท',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'จํานวณคน  ',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  NumberFormat('#,##0').format(int.parse(widget.Person!)),
                  style: GoogleFonts.kanit(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  '  คน',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'จํานวณเงินทิป  ',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  NumberFormat('#,##0.00').format(double.parse(widget.Tip!)),
                  style: GoogleFonts.kanit(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  '  บาท',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'หารกันคนละ  ',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  NumberFormat('#,##0.00').format((double.parse(widget.Money!) + double.parse(widget.Tip!)) / int.parse(widget.Person!)),
                  style: GoogleFonts.kanit(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
                Text(
                  '  บาท',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text('ขอบคุณที่ใช้บริการ', style: GoogleFonts.kanit(fontSize: MediaQuery.of(context).size.height * 0.03)),
          ],
        ),
      ),
    );
    
  }
}
