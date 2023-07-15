import 'package:flutter/material.dart';

class mainMenuLockIcon extends StatelessWidget {
  const mainMenuLockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return _mainIcon();
  }
}

class _mainIcon extends StatelessWidget {
  const _mainIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return mainMenuIcon();
  }
}

class mainMenuIcon extends StatelessWidget {
  const mainMenuIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.tag_faces_rounded,size: 100);
  }
}