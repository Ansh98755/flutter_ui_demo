import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 28),
                Image.asset('assets/dog.png'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[212],
                          prefixIcon: const Icon(Icons.email, color: Colors.grey),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Email Address',
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 35),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[212],
                          prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 33),
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
                const SizedBox(height: 40),
                SizedBox(
                  height: 45,
                  width: 318,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightGreen,
                      textStyle: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'or connect with',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Fredo',
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 53),
                SizedBox(
                  height: 45,
                  width: 318,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightGreen,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/google_logo.png',
                            width: 20, height: 20),
                        const SizedBox(width: 8),
                        const Text('Login With Google'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 45,
                  width: 318,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightGreen,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/facebook_logo.png',
                            width: 20, height: 20),
                        const SizedBox(width: 8),
                        const Text('Login With Facebook'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 45,
                  width: 318,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightGreen,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/apple_logo.png',
                            width: 20, height: 20),
                        const SizedBox(width: 8),
                        const Text('Login With Apple'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 46),
                SizedBox(
                  height: 45,
                  width: 318,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.lightGreen,
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/newScreen');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/apple_logo.png',
                            width: 20,
                            height: 20
                        ),
                        const SizedBox(width: 8),
                        const Text('Navigate to next page'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
