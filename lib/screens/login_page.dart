import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/martian_surface.png'),
                fit: BoxFit.fill
              )
            ),
          ),
          Positioned(
              left: 40,
              top: 180,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80),
                topRight: Radius.circular(80)
              )
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 50, right: 50, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.grey[500],
                      ),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        color: Colors.grey[400]
                      )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.vpn_key,
                        color: Colors.grey[500],
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400]
                      )
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Colors.grey[400]
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Opacity(
                        opacity: .5,
                        child: Icon(
                        Icons.face,
                        size: 50,
                      ),
                      ),
                       Opacity(
                        opacity: .5,
                        child: Icon(
                        Icons.fingerprint,
                        size: 50,
                      ),
                      )
                    ],
                  ),
                )
              ],
            ),
            )
          ),
          )
        ],
      ),
    );
  }
}