import 'package:get/route_manager.dart';

// 정수의 디렉션 파라미터를 가지는 함수의 형태
typedef MoveCallback = void Function(int direction);

class JoyStick extends GetMaterialController {
  final MoveCallback onMove;

  // 객체가 생성될 때 무조건 이벤트를 지정 받도록 한다.
  JoyStick({required this.onMove});
}
