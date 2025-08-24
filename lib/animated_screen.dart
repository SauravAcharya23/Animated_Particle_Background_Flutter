import 'package:flutter/material.dart';

class AnimatedParticleScreen extends StatefulWidget {
  const AnimatedParticleScreen({super.key});

  @override
  State<AnimatedParticleScreen> createState() => _AnimatedParticleScreenState();
}

class _AnimatedParticleScreenState extends State<AnimatedParticleScreen> with SingleTickerProviderStateMixin {

  late AnimationController _particleController;

  @override
  void initState() {
    super.initState();
    _particleController = AnimationController(vsync: this, duration: Duration(seconds: 20))..repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}