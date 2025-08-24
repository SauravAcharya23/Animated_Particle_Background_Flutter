import 'package:animation/particle_system.dart';
import 'package:flutter/material.dart';

class AnimatedParticleScreen extends StatefulWidget {
  const AnimatedParticleScreen({super.key});

  @override
  State<AnimatedParticleScreen> createState() => _AnimatedParticleScreenState();
}

class _AnimatedParticleScreenState extends State<AnimatedParticleScreen> with SingleTickerProviderStateMixin {

  late AnimationController _particleController;

  List<Particle> particles = [];
  final int particleCount = 50;

  @override
  void initState() {
    super.initState();
    _particleController = AnimationController(vsync: this, duration: Duration(seconds: 20))..repeat();
    _initializeParticles();
  }

  void _initializeParticles() {
    particles = List.generate(particleCount, (index) => Particle());
  }

  @override
  void dispose() {
    _particleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}