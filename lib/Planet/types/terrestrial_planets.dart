import 'package:dart_application_solar_system/Behavior/rotation.dart';
import 'package:dart_application_solar_system/planet/planet.dart';

class TerrestrialPlanet extends Planet {
  final double density;

  const TerrestrialPlanet({
    required this.density,
    required String name,
    required double mass,
    required double diameter,
    required double gravity,
    required double avgTemp,
    required double rotationSpeed,
  }) : super(
          name: name,
          mass: mass,
          diameter: diameter,
          gravity: gravity,
          avgTemp: avgTemp,
          rotationSpeed: rotationSpeed,
        );
}

class Earth extends TerrestrialPlanet implements Rotation {
  final String satellite;

  const Earth.info({required this.satellite})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Earth",
            density: 5.515,
            rotationSpeed: 0.465);

  @override
  void rotate() {
    print(
        "Я вращаюсь против часовой стрелки co скоростью ${super.rotationSpeed}");
  }
}

class Mars extends TerrestrialPlanet implements Rotation {
 final List<String> satellite;
 final double olimpHeight;
  const Mars.info({required this.satellite, required this.olimpHeight})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Mars",
            density: 5.515,
            rotationSpeed: 13);

  @override
  void rotate() {
    print(
        "Я вращаюсь против часовой стрелки co скоростью ${super.rotationSpeed}");
  }
}

class Mercury extends TerrestrialPlanet implements Rotation {
  final double yearRotation;

  const Mercury.info({required this.yearRotation})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Mercury",
            density: 5.515,
            rotationSpeed: 13);

  @override
  void rotate() {
    print(
        "Я вращаюсь против часовой стрелки co скоростью ${super.rotationSpeed}");
  }
}

class Venus extends TerrestrialPlanet implements Rotation {
  final String directionOfRotating;

  const Venus.info({required this.directionOfRotating})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Earth",
            density: 5.515,
            rotationSpeed: 13);

  @override
  void rotate() {
    print(
        "Я вращаюсь $directionOfRotating co скоростью ${super.rotationSpeed}");
  }
}
