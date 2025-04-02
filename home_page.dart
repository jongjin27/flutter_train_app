import 'package:flutter/material.dart';
import 'station_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          '기차 예매',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Container(
              width:
                  MediaQuery.of(
                    context,
                  ).size.width *
                  0.9,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceEvenly,
                    children: [
                      stationSelection(
                        context,
                        '출발역',
                      ),
                      stationSelection(
                        context,
                        '도착역',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey[400],
                    thickness: 2,
                    height: 50,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 15,
                ),
              ),
              onPressed: () {},
              child: Text(
                '좌석 선택',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget stationSelection(
    BuildContext context,
    String label,
  ) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
        Text(
          '선택',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
