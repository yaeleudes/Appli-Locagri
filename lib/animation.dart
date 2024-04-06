import 'package:flutter/material.dart';
import 'dart:async';

class AnimationDelay extends StatefulWidget {
  final int delay;
  final Widget child;
  const AnimationDelay({super.key, required this.delay, required this.child});

  @override
  State<AnimationDelay> createState() => _AnimationDelayState();
}

class _AnimationDelayState extends State<AnimationDelay> with SingleTickerProviderStateMixin{

  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  @override
  void initState(){
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500)
    );

  //Comportement de notre animation
    final curve = CurvedAnimation(parent: _controller, curve: Curves.decelerate);

    _animOffset = Tween<Offset>(
      begin: const Offset(0.0, -0.35),
      end: Offset.zero
    ).animate(curve);

    Timer(Duration(milliseconds: widget.delay), (){
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
