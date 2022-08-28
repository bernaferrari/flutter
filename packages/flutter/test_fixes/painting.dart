import 'package:flutter/painting.dart';

void main() {
  BoxDecoration decoration;

  // Changes made in https://github.com/flutter/flutter/pull/105291
  BoxDecoration(color: Color(0xFFFF0000), boxShadow: []);
  BoxDecoration(
    shape: BoxShape.rectangle,
    color: Color(0xFFFF0000),
    boxShadow: [],
  );
  BoxDecoration(
    color: Color(0xFFFF0000),
    boxShadow: [],
    backgroundBlendMode: BlendMode.color,
  );
  BoxDecoration(
    color: Color(0xFFFF0000),
    boxShadow: [],
    border: Border.all(
      color: Color(0xFF000000),
      width: 2,
    ),
  );
  BoxDecoration(
    shape: BoxShape.circle,
    color: Color(0xFFFF0000),
    boxShadow: [],
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      colors: const [Color(0xFFFFFFFF), Color(0xFF000000)],
    ),
  );
  decoration.copyWith(
    color: Color(0xFFFF0000),
    shape: BoxShape.rectangle,
  );
}
