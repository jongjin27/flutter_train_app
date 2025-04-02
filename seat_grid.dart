import 'package:flutter/material.dart';

class SeatGrid extends StatelessWidget {
  final int rowCount = 10;
  final int colCount = 4;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                alignment: Alignment.center,
                child: Text(
                  '${rowIndex + 1}',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ...List.generate(colCount, (
                colIndex,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4,
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:
                          (rowIndex == 2 &&
                                  colIndex == 1)
                              ? Colors.purple
                              : Colors.grey[300],
                      borderRadius:
                          BorderRadius.circular(
                            8,
                          ),
                    ),
                  ),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
