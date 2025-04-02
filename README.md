 프로젝트는 Flutter를 사용하여 만든 기차 예매 애플리케이션입니다.
사용자는 출발역과 도착역을 선택하고, 좌석을 예매할 수 있습니다.

 기능

출발역 / 도착역 선택
기차역 목록에서 역 검색
좌석 선택
예매 버튼 클릭 시 확인 화면 이동

폴더구조

/lib
  ├── main.dart               # 앱 진입점
  ├── screens/
  │    ├── home_page.dart     # 홈 화면
  │    ├── station_list_page.dart # 기차역 선택 화면
  │    ├── seat_page.dart     # 좌석 선택 화면
  ├── widgets/
  │    ├── station_selection.dart  # 출발역/도착역 선택 위젯
  │    ├── rounded_button.dart     # 공통 버튼
  │    ├── station_list_tile.dart  # 기차역 리스트 아이템
  │    ├── seat_grid.dart          # 좌석 배치 UI

 사용된 기술
	•	Flutter
	•	Dart
	•	Provider (상태 관리)
	•	Material UI
