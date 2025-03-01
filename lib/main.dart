import 'package:flutter/material.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // margin: const EdgeInsets.symmetric(horizontal: 99, vertical: 60),
        // color: Colors.white,
        body:Stack(
          children: [
        Positioned.fill(
        child: Image.asset(
          'assets/background.png',
          fit: BoxFit.cover,
        ),
      ),

        SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 28),
            Image.asset(
                'assets/dog.png'
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34),

              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                        fillColor: Colors.grey[212],
                        prefixIcon: Icon(
                            Icons.email,
                            color:Colors.grey,
                        ),
                      // labelText: 'Email Address',
                      //   labelStyle: TextStyle(color: Colors.grey),

                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),

                      hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),

                  SizedBox(height: 35),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[212],
                        prefixIcon: Icon(
                          Icons.lock,
                          color:Colors.grey,
                        ),
                        // labelText: 'Password',
                        // labelStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),

                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.only(left: 182),
              child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontFamily: 'Fredo',
                      fontSize: 20,
                  ),

              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 45,
              width: 318,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors. black,
                    backgroundColor: Colors.lightGreen,
                    textStyle:  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold ),
                  ),
                  onPressed: () {  },
                  child: const Text('Login')
              ),
            ),
            SizedBox(height: 24),
            Text(
              'or connect with',
              style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Fredo',
              fontSize: 25,
            ),
            ),
            SizedBox(height: 53),
            SizedBox(
              height: 45,
              width: 318,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors. black,
                    backgroundColor: Colors.lightGreen,
                    textStyle:  const TextStyle(fontSize: 20),
                  ),
                  onPressed: () { },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Centers content
                  children: [
                    Image.asset(
                        'assets/google_logo.png',
                        width: 20,
                        height: 20,
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text('Login With Google'),
                  ],
                ),
              )
            ),
            SizedBox(height: 16),
            SizedBox(
                height: 45,
                width: 318,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors. black,
                    backgroundColor: Colors.lightGreen,
                    textStyle:  const TextStyle(fontSize: 20),
                  ),
                  onPressed: () { },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centers content
                    children: [
                      Image.asset(
                        'assets/facebook_logo.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 8), // Space between icon and text
                      Text('Login With Facebook'),
                    ],
                  ),
                )
            ),
            SizedBox(height: 16),
            SizedBox(
                height: 45,
                width: 318,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors. black,
                    backgroundColor: Colors.lightGreen,
                    textStyle:  const TextStyle(fontSize: 20),
                  ),
                  onPressed: () { },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centers content
                    children: [
                      Image.asset(
                        'assets/apple_logo.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 8), // Space between icon and text
                      Text('Login With Apple'),
                    ],
                  ),
                )
            ),
            SizedBox(height: 66)
          ],
        ),
        ),
      ],
        ),
      ),
    );
  }
  }

