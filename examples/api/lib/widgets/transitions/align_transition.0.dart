// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Flutter code sample for [AlignTransition].

void main() => runApp(const AlignTransitionExampleApp());

class AlignTransitionExampleApp extends StatelessWidget {
  const AlignTransitionExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AlignTransitionExample());
  }
}

class AlignTransitionExample extends StatelessWidget {
  const AlignTransitionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: TweenAnimationBuilder<double>.repeat(
        tween: Tween<double>(begin: 0.0, end: 1.0),
        duration: const Duration(seconds: 2),
        reverse: true,
        builder: (BuildContext context, double value, Widget? child) {
          final Animation<double> curvedAnimation = CurvedAnimation(
            parent: AlwaysStoppedAnimation<double>(value),
            curve: Curves.decelerate,
          );
          final Animation<AlignmentGeometry> alignmentAnimation = Tween<AlignmentGeometry>(
            begin: Alignment.bottomLeft,
            end: Alignment.center,
          ).animate(curvedAnimation);
          return AlignTransition(alignment: alignmentAnimation, child: child);
        },
        child: const Padding(padding: EdgeInsets.all(8.0), child: FlutterLogo(size: 150.0)),
      ),
    );
  }
}
