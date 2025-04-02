import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  final int rowCount = 10; // 좌석 행 개수
  final int colCount = 4; // 좌석 열 개수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '좌석 선택',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // 출발역과 도착역
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text(
                  '수서',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons
                      .arrow_circle_right_outlined,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  '부산',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // ABCD 레이블
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children:
                  ['A', 'B', 'C', 'D']
                      .map(
                        (e) => Container(
                          width: 50,
                          height: 50,
                          alignment:
                              Alignment.center,
                          child: Text(
                            e,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
            SizedBox(height: 10),
            // 좌석 선택 리스트
            Expanded(
              child: ListView.builder(
                itemCount: rowCount,
                itemBuilder: (context, rowIndex) {
                  return Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        alignment:
                            Alignment.center,
                        child: Text(
                          '${rowIndex + 1}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ...List.generate(colCount, (
                        colIndex,
                      ) {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color:
                                    (rowIndex ==
                                                2 &&
                                            colIndex ==
                                                1)
                                        ? Colors
                                            .purple
                                        : Colors
                                            .grey[300],
                                borderRadius:
                                    BorderRadius.circular(
                                      8,
                                    ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // 예매 버튼
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
                '예매 하기',
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
}
