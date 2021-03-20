import 'package:flutter/material.dart';
import 'package:international_phone_field/international_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/sign-up';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String phoneNumber;
  String phoneIsoCode;
  String selectedCountryCapital;
  String selectedCountryContinent;
  String selectedCountryCurrency;
  String selectedCountryName;
  bool visible = false;
  String confirmedNumber = '';
  void onPhoneNumberChange(
      String number,
      String internationalizedPhoneNumber,
      String isoCode,
      String dialCode,
      String countryCapital,
      String countryContinent,
      String countryCurrency,
      String countryName) {
    setState(() {
      phoneNumber = number;
      phoneIsoCode = isoCode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 60),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Enter information below to sign up',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    InterField(
                      onPhoneNumberChange: onPhoneNumberChange,
                      initialPhoneNumber: phoneNumber,
                      initialSelection: phoneIsoCode,
                      enabledCountries: ['+234'],
                      labelText: "Enter your phone Number",
                      addCountryComponentInsideField: true,
                      border: OutlineInputBorder(
                        gapPadding: 20.0,
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10),
                      child: Container(
                        child: TextField(
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              labelText: "First Name",
                              fillColor: Colors.white,
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 8.0, top: 8.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: BorderSide(color: Colors.green)),
                            )),
                      ),
                    ),
                    SizedBox(height: 13.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Container(
                          child: TextField(
                              keyboardType: TextInputType.name,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                labelText: "Last Name",
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide:
                                        BorderSide(color: Colors.green)),
                              ))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.arrow_forward,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
