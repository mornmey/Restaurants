import 'dart:ui';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  bool _hide = true;
  get _buildBody {
    return Container(
        child: ListView(
      children: [
        _buildText,
        _buildUser,
        _buildPassword,
        // Card(
        //   child: ListTile(
        //     title: Text("SIGN IN"),
        //   ),
        // ),
        // Card(
        //   child: ListTile(
        //     leading: Icon(Icons.facebook),
        //     title: Text("Connect with Facebook"),
        //   ),
        // ),
      ],
    ));
  }

  get _buildText {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Welcome Back",
              style: TextStyle(fontSize: 40, color: Colors.orange),
            ),
            subtitle: Text("Sign in to Continue"),
          )
        ],
      ),
    );
  }

  get _buildUser {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 100, right: 20, left: 20),
      child: TextField(
        obscureText: _hide,
        autocorrect: true,
        decoration: InputDecoration(
          hintText: "username",
          prefixIcon: Icon(Icons.person),
        ),
      ),
    );
  }

  get _buildPassword {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: TextField(
        obscureText: _hide,
        autocorrect: true,
        decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.vpn_key_rounded),
            suffixIcon: IconButton(
              icon:
                  Icon(_hide ? Icons.visibility : Icons.visibility_off_rounded),
              onPressed: () {
                setState(() {
                  _hide = !_hide;
                });
              },
            )),
      ),
    );
  }
}
