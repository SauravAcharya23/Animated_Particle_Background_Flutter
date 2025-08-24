import 'package:animation/particle_painter.dart';
import 'package:animation/particle_system.dart';
import 'package:flutter/material.dart';

class AnimatedParticleScreen extends StatefulWidget {
  const AnimatedParticleScreen({super.key});

  @override
  State<AnimatedParticleScreen> createState() => _AnimatedParticleScreenState();
}

class _AnimatedParticleScreenState extends State<AnimatedParticleScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _particleController;

  List<Particle> particles = [];
  final int particleCount = 100;

  @override
  void initState() {
    super.initState();
    _particleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    )..repeat();
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.8, -0.9),
            radius: 2.0,
            colors: [Color(0xFF1A1A2E), Color(0xFF16213E), Color(0xFF0F0F23)],
          ),
        ),
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _particleController,
              builder: (context, child) {
                return CustomPaint(
                  painter: ParticlePainter(
                    particles,
                    _particleController.value,
                  ),
                  size: Size.infinite,
                );
              },
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [Colors.cyan, Colors.purple, Colors.pink],
                        ).createShader(bounds),
                        child: Text(
                          "Add Content Here..",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: -1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
