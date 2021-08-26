import 'package:flutter/material.dart';
import 'package:flutter1/components/custom_svg_icon.dart';
import 'package:flutter1/components/defult_button.dart';
import 'package:flutter1/components/form_error.dart';
import 'package:flutter1/components/no_account_text.dart';
import 'package:flutter1/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Column(children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(24),
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Please enter your email and we will sent \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                )
              ]),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> error = [];
  late String email;

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
          textFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(error: error),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  print("click");
                  // ...
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          NoAccountText()
        ],
      ),
    );
  }

  TextFormField textFormField() {
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
            addError(errors: kEmailNullError);
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
