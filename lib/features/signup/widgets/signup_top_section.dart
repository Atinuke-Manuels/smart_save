import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/login/pages/login_page.dart';

import '../../login/widgets/button_item.dart';
import '../../login/widgets/text_input_field.dart';
import '../bloc/signUp_bloc.dart';
import '../bloc/signUp_state.dart';


class SignUpTopSection extends StatefulWidget {
  @override
  _SignUpTopSection createState() => _SignUpTopSection();
}

class _SignUpTopSection extends State<SignUpTopSection> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final SignupBloc bloc = BlocProvider.of<SignupBloc>(context);

    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccessful) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return LoginPage();
            }),
          );
        } else if (state is SignupError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("An error occurred")),
          );
        }
      },
      child: BlocBuilder<SignupBloc, SignupState>(
        builder: (context, state) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  child: Text(
                    "Fill your details or continue with social media",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextInputField(
                  hint: 'User Name',
                  controller: userNameController,
                  leading: Icon(
                    Icons.person,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                  keyboardType: TextInputType.text,
                  // onChanged: (value) {
                  //   setState(() {
                  //     userNameController.text = value;
                  //   });
                  // },
                ),
                SizedBox(
                  height: 25,
                ),
                TextInputField(
                  hint: 'Email Address',
                  controller: emailAddressController,
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  // onChanged: (value) {
                  //   setState(() {
                  //     emailAddressController.text = value;
                  //   });
                  // },
                ),
                SizedBox(
                  height: 25,
                ),
                TextInputField(
                  hint: 'Password',
                  controller: passwordController,
                  leading: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey.shade500,
                    size: 20,
                  ),
                  keyboardType: TextInputType.text,
                  obscure: true,
                  // onChanged: (value) {
                  //   setState(() {
                  //     passwordController.text = value;
                  //   });
                  // },
                ),
                SizedBox(height: 10,
                ),
                SizedBox(
                  height: 40,
                ),
                ButtonItem(
                  title: "SIGN UP",
                  onPress: () {
                    if (_isUserInputValid()) {
                      bloc.registerUser(
                        userName: userNameController.text,
                        emailAddress: emailAddressController.text,
                        password: passwordController.text,
                      ).then((value) {
                        if (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return LoginPage();
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
        },
      ),
    );
  }

  bool _isUserInputValid() {
    String errorMessage = "";
    //Check to see if input is valid
    if (userNameController.text.isEmpty) {
      errorMessage = "User name cannot be empty";
    } else if (emailAddressController.text.isEmpty) {
      errorMessage = "Email cannot be empty";
    } else if (passwordController.text.isEmpty || passwordController.text.length < 8) {
      errorMessage = "Enter a strong password greater than 7 characters";
    }
    if (errorMessage.isNotEmpty) {
      //Show Snackbar Alert
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
      return false;
    }
    return true;
  }
}