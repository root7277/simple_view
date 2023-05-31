import 'package:flutter/material.dart';

class Header_page extends StatefulWidget {
  const Header_page({super.key});

  @override
  State<Header_page> createState() => _Header_pageState();
}

class _Header_pageState extends State<Header_page> {
bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.close,
                    color: Color.fromARGB(255, 135, 131, 131),
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'login_page');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 52, 212, 68),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 16),
            child: Container(
              height: 50,
              width: 320,
              color: Color.fromARGB(255, 206, 204, 204),
              child: const TextField( 
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.previous,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: '  Name ',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 16),
            child: Container(
              height: 50,
              width: 320,
              color: Color.fromARGB(255, 206, 204, 204),
              child: const TextField( 
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.previous,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: '  Email ',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.5, right: 16),
            child: Container(
              height: 50,
              width: 320,
              color: Color.fromARGB(255, 206, 204, 204),
              child: TextField( 
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.previous,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: '  Password ',
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
            height: 30,
          ),
          Padding(  
            padding: const EdgeInsets.only(left: 13, right: 20),
            child: Row(
              children: [
                Checkbox(
                value: _checkbox,
                onChanged: (bool? value){
                  setState(() {
                    _checkbox = value!;
                  });
                 },
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  """I would like to recieve your newslatter and 
  other promotional information.""",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          ElevatedButton(
          onPressed: (){},
          style: const ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(320.0, 50.0),),
            backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 52, 212, 68),),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            ),
          ),
          child: const Text(
            'Sign Up',
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