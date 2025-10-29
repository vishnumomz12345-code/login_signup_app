import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  Color globalColor = Color.fromRGBO(78, 1, 137, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text("Create an account", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
              Text("Connect with your friends today!",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,),),
              SizedBox(height: 50),

              Text("EmailAddress", style: TextStyle(color: globalColor)),
              SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Email Address",

                ),
              ),
              SizedBox(height: 25),
              Text("Phone Number", style: TextStyle(color: globalColor,fontSize: 19,fontWeight: FontWeight.w600,)),
              SizedBox(height: 10),

              IntlPhoneField(
                disableAutoFillHints: false,
                showCountryFlag: false,
                // Padding for the flag button
                flagsButtonPadding: const EdgeInsets.all(8),
                // Position of the dropdown icon
                dropdownIconPosition: IconPosition.trailing,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  // Label for the input field
                  // Border style for the input field
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                // Default country code (India)
                initialCountryCode: 'IN',
                // Displays the cursor in the input field
                showCursor: true,
                // Shows the dropdown icon for country selection
                showDropdownIcon: true,
                onChanged: (phone) {
                  // Callback when the phone number changes
                  // Prints the complete phone number
                  print(phone.completeNumber);
                },
              ),
              Text("Password", style: TextStyle(color: globalColor,fontSize: 19,fontWeight: FontWeight.w600,)),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Please enter your password",

                  suffixIcon: Icon(Icons.remove_red_eye),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) => setState(() {
                      isChecked = value ?? false;
                    }),
                  ),
                  Text("Remember Me",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,),),
                  Spacer(),
                  Text("Forgot Password", style: TextStyle(color: Colors.red,fontSize: 19,fontWeight: FontWeight.w600,)),
                ],
              ),
              SizedBox(height: 10),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.99,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: globalColor),
                  onPressed: () {},

                  child: Text('Sign Up', style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w600,)),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text("or with"),
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Image.asset('assets/images/iconmonstr-github-1 1.png'),
                        Text("GitHub", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/Group.png'),

                        Text("GitLab", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account ? "),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Scaffold(body: LoginScreen()),
                        ),
                      );
                    },

                    child: Text("Sign In"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
