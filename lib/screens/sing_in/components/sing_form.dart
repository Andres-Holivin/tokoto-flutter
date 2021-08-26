import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_svg_icon.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/components/form_error.dart';
import 'package:flutter1/constants.dart';
import 'package:flutter1/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter1/screens/login_success/login_success_screen.dart';
import 'package:flutter1/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  late String email, password;
  bool remember = false;

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
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          textFormPassword(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(error: error),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefultButton(
            text: "Login",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
      ),
    );
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

  TextFormField textFormEmail() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue!,
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
}
