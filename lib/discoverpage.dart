import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody,
    );
  }

  get _buildBody {
    return Container(
        child: ListView(
      children: [
        _buildIcon,
      ],
    ));
  }

  get _buildIcon {
    return Container(
      child:
          IconButton(icon: Icon(Icons.location_on_rounded), iconSize: 50, onPressed: () {}),
    );
  }
}