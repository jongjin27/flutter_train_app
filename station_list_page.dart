import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final List<String> stations = [
    "주서",
    "동탄",
    "평택지제",
    "천안아산",
    "오송",
    "대전",
    "김천구미",
    "동대구",
    "경주",
    "울산",
    "부산",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          '출발역',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        itemCount: stations.length,
        separatorBuilder:
            (context, index) => Divider(
              color: Colors.grey[300],
              thickness: 1,
            ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              stations[index],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
