import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yamm_app/widgets/button.dart';
import 'package:yamm_app/widgets/entry.dart';
import 'package:yamm_app/widgets/label.dart';

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String googleIcon = 'assets/icons/icons8-google-48.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                'הרשמה',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: GoogleFonts.heebo(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Text(
                'לורם היא רשת אנונימית- משתמשים אחרים לא יוכלו לראות את שמך ואת הפרטים שלך.',
                textDirection: TextDirection.rtl,
                style: GoogleFonts.heebo(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    LoginButton(label: 'facebook'),
                  ]),
                  SizedBox(width: 20),
                  Column(children: <Widget>[
                    LoginButton(label: 'Google'),
                  ]),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(children: <Widget>[
                    const DataLabel(label: 'שם משפחה'),
                    DataEntry(
                        controller: _surnameController,
                        label: 'שם משפחה',
                        exampleText: 'ישראלי',
                        width: 175),
                  ]),
                  Column(children: <Widget>[
                    const DataLabel(label: 'שם פרטי'),
                    DataEntry(
                        controller: _nameController,
                        label: 'שם פרטי',
                        exampleText: 'ישראל',
                        width: 175),
                  ]),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                DataLabel(label: 'דואר אלקטרוני'),
                SizedBox(
                  width: 24,
                )
              ]),
              Row(
                children: <Widget>[
                  DataEntry(
                      controller: _emailController,
                      label: 'דואר אלקטרוני',
                      exampleText: 'israel.israely@gmail.com',
                      width: 350),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                DataLabel(label: 'סיסמה'),
                SizedBox(
                  width: 24,
                )
              ]),
              Row(
                children: <Widget>[
                  DataEntry(
                      controller: _passwordController,
                      label: 'סיסמה ',
                      exampleText: '*********',
                      width: 350),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
