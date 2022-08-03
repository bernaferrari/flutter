import 'package:flutter/painting.dart';

void main() {
  // Changes made in https://github.com/flutter/flutter/pull/105291
  const BoxDecoration(color: Color(0xFFFF0000), boxShadow: []);
  const BoxDecoration(
    shape: BoxShape.rectangle,
    color: Color(0xFFFF0000),
    boxShadow: [],
  );
  const BoxDecoration(
    color: Color(0xFFFF0000),
    boxShadow: [],
    backgroundBlendMode: BlendMode.color,
  );
  const BoxDecoration(
    color: Color(0xFFFF0000),
    boxShadow: [],
    border: Border.all(
      color: Color(0xFF000000),
      width: 2,
    ),
  );
  const BoxDecoration(
    shape: BoxShape.circle,
    color: Color(0xFFFF0000),
    boxShadow: [],
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      colors: const [Color(0xFFFFFFFF), Color(0xFF000000)],
    ),
  );
}
