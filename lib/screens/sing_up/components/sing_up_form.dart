import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_svg_icon.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/components/form_error.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/screens/complete_profile/complete_profile_screen.dart';
import 'package:flutter1/size_config.dart';

class SingUpForm extends StatefulWidget {
  @override
  _SingUpFormState createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  late String email, password;
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
            textFormEmail(),
            SizedBox(height: getProportionateScreenHeight(30)),
            textFormPassword(),
            SizedBox(height: getProportionateScreenHeight(30)),
            textFormConfirmPassword(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(error: error),
            DefultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // print(_formKey.currentState.);
                  Navigator.pushNamed(
                      context, CompleteProfileScreen.routerName);
                }
              },
            )
          ],
        ));
  }

  TextFormField textFormEmail() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) {
          email = newValue!;
        },
        // (newValue) => email = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kEmailNullError)) {
            removeError(errors: kEmailNullError);
          } else if (emailValidatorRegExp.hasMatch(value) &&
              error.contains(kInvalidEmailError)) {
            removeError(errors: kInvalidEmailError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kEmailNullError)) {
            setState(() {
              addError(errors: kEmailNullError);
            });
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !error.contains(kInvalidEmailError)) {
            addError(errors: kInvalidEmailError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your email",
            labelText: "Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            )));
  }

  TextFormField textFormPassword() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && error.contains(kPassNullError)) {
            removeError(errors: kPassNullError);
          } else if (value.length >= 8 && error.contains(kShortPassError)) {
            removeError(errors: kShortPassError);
          }
          password = value;
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !error.contains(kPassNullError)) {
            addError(errors: kPassNullError);
            return "";
          } else if (value.length < 8 && !error.contains(kShortPassError)) {
            addError(errors: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Enter your Password",
            labelText: "Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            )));
  }

  TextFormField textFormConfirmPassword() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirmPassword = newValue!,
        onChanged: (value) {
          confirmPassword = value;
          if (password == confirmPassword) {
            removeError(errors: kMatchPassError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(errors: kMatchPassError);
            return "";
          } else if (password != confirmPassword) {
            addError(errors: kMatchPassError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            hintText: "Re-Enter your Password",
            labelText: "Confrim Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            )));
  }
}
