

import 'package:flutter/material.dart';

class fhome extends StatefulWidget {
  const fhome({super.key});

  @override
  State<fhome> createState() => _fhomeState();
}

class _fhomeState extends State<fhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dashboard'),centerTitle: true,

      ),
      body:  Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          )
        ],
      ),
    );
  }
}
