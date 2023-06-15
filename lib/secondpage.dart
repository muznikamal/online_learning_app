import 'package:flutter/material.dart';
import 'package:online_learning_app/firstpage.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool passToggle = true;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F2),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Log in',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 40,
              height: 1.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), // Sudut kiri atas
            topRight: Radius.circular(20.0), // Sudut kanan atas
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 40, top: 20),
                child: Container(
                  width: 68,
                  height: 21,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      height: 1.0,
                      color: Color(0xFF858597),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 327,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Color(0xFFB8B8D2),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    height: 1.0,
                    color: Color(0xFF858597),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: 327,
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFB8B8D2),
                      ),
                    ),
                  ),
                  obscureText: _obscureText,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 40),
                child: Container(
                  width: 125,
                  height: 21,
                  child: Text(
                    'Forget Password?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      height: 1.0,
                      color: Color(0xFF858597),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Center(
              child: GestureDetector(
                onTap: fungsiditekan,
                child: Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF3D5CFF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 191,
                height: 18,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      height: 1.0,
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: Color(0xFF858597),
                        ),
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: Color(0xFF3D5CFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 103.5,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 22.77,
                ),
                Text(
                  'Or login with',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 22.77,
                ),
                Container(
                  height: 1,
                  width: 103.5,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/gg.png',
                ),
                SizedBox(
                  width: 45,
                ),
                Image.asset('assets/fb.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void fungsiditekan() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return firstPage();
    }));
  }
}
