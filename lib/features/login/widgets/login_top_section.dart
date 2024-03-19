import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/home/pages/home_view.dart';
import 'package:smart_save/features/login/widgets/text_input_field.dart';

import '../../signup/bloc/signUp_bloc.dart';
import '../../signup/repository/signup_repository.dart';
import 'button_item.dart';


class LoginTopSection extends StatefulWidget {
  const LoginTopSection({
    super.key,

  });


  @override
  State<LoginTopSection> createState() => _LoginTopSectionState();
}

class _LoginTopSectionState extends State<LoginTopSection> {
  final TextEditingController emailAddressController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  String emailAddress = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    final SignupBloc bloc = BlocProvider.of<SignupBloc>(context);

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome Back!",
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Text(
              "Fill your details or continue with social media",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextInputField(
            // label: 'Email Address',
            hint: 'Email Address',
            controller: emailAddressController,
            // value: "emailAddress",
            leading: Icon(
              Icons.email_outlined,
              color: Colors.grey.shade500,
              size: 20,
            ),
            keyboardType: TextInputType.emailAddress,
            // onChanged: (value) {
            //   setState(() {
            //     emailAddress = value;
            //   });
            // },
          ),
          SizedBox(
            height: 25,
          ),
          TextInputField(
            // label: 'Password',
            hint: 'Password',
            controller: passwordController,
            // value: "password",
            leading: Icon(
              Icons.lock_outline_rounded,
              color: Colors.grey.shade500,
              size: 20,
            ),
            keyboardType: TextInputType.text,
            // onChanged: (value) {
            //   setState(() {
            //     password = value;
            //   });
            // },
            obscure: true,
            trailing: Icon(
              Icons.visibility_off_sharp,
              color: Colors.grey.shade500,
              size: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/ForgotPasswordPage');
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey.shade600),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          ButtonItem(
            title: "LOG IN",
            onPress: () {
              if (_isCurrentUserValid()) {
                bloc.loginUser(
                  emailAddress: emailAddressController.text,
                  password: passwordController.text,
                ).then((value) {
                  if (value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomeView();
                      }),
                    );
                  }
                });
              }
            },
            buttonWidth: MediaQuery.of(context).size.width * 0.95,
          ),
        ],
      ),
    );
  }
  bool _isCurrentUserValid() {
    final email = emailAddressController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Email and password cannot be empty")),
      );
      return false;
    }

    // Additional validation logic, if needed.

    return true;
  }
}