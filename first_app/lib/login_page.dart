import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 320,
              height: 50,
              color: Color.fromARGB(255, 206, 204, 204),
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.none,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: '  Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 320,
              height: 50,
              color: Color.fromARGB(255, 206, 204, 204),
              child: TextField(
                keyboardType: TextInputType.none,
                textInputAction: TextInputAction.none,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: '  Password',
                  border: InputBorder.none,
                  suffix: TextButton(
                    onPressed: (){}, 
                    child: Text(
                      'Show',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 52, 212, 68),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 130,
          ),
          ElevatedButton(
            onPressed: (){}, 
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(320, 50)),
              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 52, 212, 68),),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50),),
                ),
              ),
            ),
            child: const Text(
              'Log In',
            ),
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text(
              'Forget your password?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 52, 212, 68),
              ),
            ),
          ),
        ],
      ),
    );
  }
}