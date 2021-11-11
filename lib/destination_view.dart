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
      appBar: AppBar(
        title: Text('${widget.destination.title} Text'),
        // backgroundColor: widget.destination.color,
      ),
      // backgroundColor: widget.destination.color[100],
      body: Container(
        padding: const EdgeInsets.all(32.0),
        alignment: Alignment.center,
        child: Text('${widget.destination.title}'),
      ),
    );
  }
}
