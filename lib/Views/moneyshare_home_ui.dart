import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moneysharesau/Views/moneyshare_result_ui.dart';

class MoneyshareHomeUi extends StatefulWidget {
  const MoneyshareHomeUi({super.key});

  @override
  State<MoneyshareHomeUi> createState() => _MoneyshareHomeUiState();
}

class _MoneyshareHomeUiState extends State<MoneyshareHomeUi> {
  bool TipCheck = false;

  TextEditingController Moneycontroller = TextEditingController(text: '');
  TextEditingController Personcontroller = TextEditingController(text: '');
  TextEditingController Tipcontroller = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          'Money Share',
          style: GoogleFonts.itim(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Image.asset(
                'assets/images/money.png',
                scale: MediaQuery.of(context).size.width * 0.0085,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CurrencyTextInputFormatter.currency(
                        locale: 'en_US', 
                        decimalDigits: 2,
                        symbol: ''
                    )
                  ],
                  controller: Moneycontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.green)),
                      label: Text(
                        'จํานวณเงิน',
                        style: GoogleFonts.kanit(),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '0.00',
                      prefixIcon: Icon(FontAwesomeIcons.moneyBill),
                      suffixIcon: Text(
                        'บาท',
                        style: GoogleFonts.kanit(),
                      ),
                      suffixIconConstraints:
                          BoxConstraints(minWidth: 40, minHeight: 0)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  controller: Personcontroller,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CurrencyTextInputFormatter.currency(
                        locale: 'en_US', 
                        decimalDigits: 0,
                        symbol: ''
                    )
                  ],
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.green)),
                      label: Text(
                        'จํานวณคน',
                        style: GoogleFonts.kanit(),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '0',
                      prefixIcon: Icon(FontAwesomeIcons.person),
                      suffixIcon: Text(
                        'คน',
                        style: GoogleFonts.kanit(),
                      ),
                      suffixIconConstraints:
                          BoxConstraints(minWidth: 40, minHeight: 0)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Colors.grey[700],
                    tristate: false,
                    value: TipCheck,
                    onChanged: (valueCheck) {
                      setState(() {
                        TipCheck = valueCheck!;
                        if (valueCheck == false) {
                          Tipcontroller.text = '';
                        }
                      });
                    },
                  ),
                  Text(
                    'เงินทิป',
                    style: GoogleFonts.kanit(),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                ),
                child: TextField(
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CurrencyTextInputFormatter.currency(
                        locale: 'en_US', 
                        decimalDigits: 2,
                        symbol: ''
                    )
                  ],
                  enabled: TipCheck,
                  controller: Tipcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.green)),
                      label: Text(
                        'เงินทิป',
                        style: GoogleFonts.kanit(),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: '0.00',
                      prefixIcon: Icon(FontAwesomeIcons.coins),
                      suffixIcon: Text(
                        'บาท',
                        style: GoogleFonts.kanit(),
                      ),
                      suffixIconConstraints:
                          BoxConstraints(minWidth: 40, minHeight: 0)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (Moneycontroller.text.trim().length == 0) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'คําเตือน',
                                    style: GoogleFonts.kanit(),
                                  ),
                                  content: Text(
                                    'ป้อนจํานวณเงิน',
                                    style: GoogleFonts.kanit(),
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'ตกลง',
                                        style: GoogleFonts.kanit(),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (Personcontroller.text.trim().length == 0) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    'คําเตือน',
                                    style: GoogleFonts.kanit(),
                                  ),
                                  content: Text(
                                    'ป้อนจํานวณคน',
                                    style: GoogleFonts.kanit(),
                                  ),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'ตกลง',
                                        style: GoogleFonts.kanit(),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          } else if (TipCheck == true) {
                            if (Tipcontroller.text.trim().length == 0) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      'คําเตือน',
                                      style: GoogleFonts.kanit(),
                                    ),
                                    content: Text(
                                      'กรุณาใส่เงินทิป',
                                      style: GoogleFonts.kanit(),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'ตกลง',
                                          style: GoogleFonts.kanit(),
                                        ),
                                      )
                                    ],
                                  );
                                },
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MoneyshareResultUi(
                                    Money: Moneycontroller.text.replaceAll(',', ''),
                                    Person: Personcontroller.text.replaceAll(',', ''),
                                    Tip: Tipcontroller.text.replaceAll(',', ''),
                                  ),
                                ),
                              );
                            }
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MoneyshareResultUi(
                                  Money: Moneycontroller.text.replaceAll(',', ''),
                                  Person: Personcontroller.text,
                                  Tip: '0'
                                ),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.00,
                              MediaQuery.of(context).size.width * 0.12,
                            )),
                        child: Text(
                          'คํานวญ',
                          style: GoogleFonts.kanit(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.00,
                              MediaQuery.of(context).size.width * 0.12,
                            )),
                        child: Text(
                          'ยกเลิก',
                          style: GoogleFonts.kanit(color: Colors.black),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              )
            ],
          ),
        ),
      ),
    );
  }
}
