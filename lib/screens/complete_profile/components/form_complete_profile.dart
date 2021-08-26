import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_svg_icon.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/components/form_error.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/screens/otp/otp_screen.dart';
import 'package:flutter1/size_config.dart';

class FormCompleteProfile extends StatefulWidget {
  @override
  _FormCompleteProfileState createState() => _FormCompleteProfileState();
}

class _FormCompleteProfileState extends State<FormCompleteProfile> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  late String firstName, lastName, phoneNumber, address;
  String? confirmPassword;
  void addError({required String errors}) {
    if (!error.contains(errors)) {
      setState(() {
        error.add(errors);
      });
    }
  }

  void removeError({required String errors}) {
    if (error.contains(errors)) {
      setState(() {
        error.remove(errors);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          textFormFirstName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          textFormLastName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          textFormPhone(),
          SizedBox(height: getProportionateScreenHeight(30)),
          textFormAddress(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(error: error),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                // print(_formKey.currentState.);
                Navigator.pushNamed(context, OtpScreen.routerName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField textFormFirstName() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) {
          firstName = newValue!;
        },
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kFirstNameNullError)) {
            removeError(errors: kFirstNameNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kFirstNameNullError)) {
            setState(() {
              addError(errors: kFirstNameNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your First Name",
            labelText: "FirstName",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }

  TextFormField textFormLastName() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) {
          lastName = newValue!;
        },
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kLastNameNullError)) {
            removeError(errors: kLastNameNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kLastNameNullError)) {
            setState(() {
              addError(errors: kLastNameNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your Last Name",
            labelText: "Last Name",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }

  TextFormField textFormPhone() {
    return TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (newValue) {
          phoneNumber = newValue!;
        },
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kPhoneNumberNullError)) {
            removeError(errors: kPhoneNumberNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kPhoneNumberNullError)) {
            setState(() {
              addError(errors: kPhoneNumberNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your Phone Number",
            labelText: "Phone Number",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Phone.svg",
            )));
  }

  TextFormField textFormAddress() {
    return TextFormField(
        keyboardType: TextInputType.text,
        onSaved: (newValue) {
          address = newValue!;
        },
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kAddressNullError)) {
            removeError(errors: kAddressNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kAddressNullError)) {
            setState(() {
              addError(errors: kAddressNullError);
            });
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your Address",
            labelText: "Address",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Location point.svg",
            )));
  }
}
