import 'package:flutter/material.dart';

import 'destination.dart';

class DestinationView extends StatefulWidget {
  DestinationView(this.destination);

  final Destination destination;

  @override
  _DestinationViewState createState() => _DestinationViewState();
}

class _DestinationViewState extends State<DestinationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDC7C3),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(32.0),
            alignment: Alignment.center,
            child: Text('${widget.destination.title}'),
          ),
        ],
      ),
    );
  }
}
