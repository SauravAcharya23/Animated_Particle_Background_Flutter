# Animated Particle Background

A beautiful Flutter animation featuring a dynamic particle system with gradient backgrounds and smooth motion effects.

## Overview

This project creates an animated particle background where colorful particles move across the screen with realistic physics. The particles change direction and reset when they reach the screen boundaries, creating an endless flowing animation.

## Features

- 🌌 Radial gradient background with deep blue/purple colors
- ✨ 100 animated particles with random properties
- 🎨 Multiple particle colors (cyan, purple, pink, blue)
- 🔄 Continuous animation loop
- 📱 Responsive design that works on all screen sizes
- 🎯 Centered text content with gradient shader effect

## Code Structure

### Main Files

1. **animated_particle_screen.dart** - Main screen widget with animation controller
2. **particle_painter.dart** - Custom painter for rendering particles
3. **particle_system.dart** - Particle class with physics and rendering logic

### Key Components

- `AnimatedParticleScreen`: The main stateful widget that sets up the animation
- `ParticlePainter`: Custom painter that handles the particle rendering
- `Particle`: Class representing individual particles with position, velocity, and appearance properties
- `AnimationController`: Controls the animation timing and refresh rate

## Installation

1. Add the necessary imports to your Flutter project:
```dart
import 'package:flutter/material.dart';
import 'dart:math' as math;
```
2. Copy the provided code files into your project

## Customization

### Adjusting Particle Count
```dart
final int particleCount = 150; // Change from default 100
```
## Modifying Colors

### Edit the colors array in the `Particle` class reset method:
```dart
final colors = [Colors.amber, Colors.green, Colors.orange, Colors.red];
```

# Performance Considerations

* The animation uses a single `AnimationController` for all particles
* Particles are simple circles drawn with `canvas.drawCircle()`
* The `shouldReapint` method returns true to ensure smooth animation
* Consider reducing particle count on lower-end devices

---

# Dependencies

This implementation uses only core Flutter packages:

* `material.dart` for UI components
* `dart:math` for random number generation

---

# Compatibility

* Flutter version: 2.0.0+
* Dart version: 2.12.0+
* Compatible with iOS, Android, Web, and Desktop

---

# License

This code is available for use in personal and commercial projects under standard Flutter licensing terms.

---

# Example Usage

Perfect for:

* App splash screens
* Background animations
* Loading states
* Decorative elements in portfolios
* Music visualizers
* Game backgrounds

Simply replace the text "Add Content Here..." with your own content to customize for your application.

