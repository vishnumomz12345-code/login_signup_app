import 'package:flutter/material.dart.';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheked = false;
  Color globalColor = Color.fromRGBO(78, 1, 137, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text("Hi, Wecome Back! 👋 ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              Text("Hello again, you’ve been missed!",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600),),
              SizedBox(height: 50),

              Text("Email",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: globalColor)),SizedBox(height:10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'sophat.leat@nintrea.live',
                ),
              ),
              SizedBox(height: 25),
              Text("Password",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: globalColor)),SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: 'Please Enter Your Password',
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(
                    value: isCheked,
                    onChanged: (value) => setState(() {
                      isCheked = value ?? false;
                    }),
                  ),
                  Text("Remember Me",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,),),SizedBox(height: 10,),
                  Spacer(),
                  Text("Forgot Password", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Colors.red)),
                ],
              ),
              SizedBox(height: 35),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.99,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {},

                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 40),
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
              SizedBox(height: 40),
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
              SizedBox(height: 85),
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
