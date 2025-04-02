import 'package:flutter/material.dart';

class StationListTile extends StatelessWidget {
  final String stationName;

  StationListTile({required this.stationName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        stationName,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {},
    );
  }
}
