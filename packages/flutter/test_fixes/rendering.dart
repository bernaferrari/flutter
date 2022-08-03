// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/rendering.dart';

void main() {
  BoxDecoration decoration;

  // Changes made in https://github.com/flutter/flutter/pull/66305
  RenderStack renderStack = RenderStack();
  renderStack = RenderStack(overflow: Overflow.visible);
  renderStack = RenderStack(overflow: Overflow.clip);
  renderStack = RenderStack(error: '');
  renderStack.overflow;

  // Changes made in https://flutter.dev/docs/release/breaking-changes/clip-behavior
  RenderListWheelViewport renderListWheelViewport = RenderListWheelViewport();
  renderListWheelViewport = RenderListWheelViewport(clipToSize: true);
  renderListWheelViewport = RenderListWheelViewport(clipToSize: false);
  renderListWheelViewport = RenderListWheelViewport(error: '');
  renderListWheelViewport.clipToSize;

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
  decoration.copyWith(
    color: Color(0xFFFF0000),
    shape: BoxShape.rectangle,
  );
}
