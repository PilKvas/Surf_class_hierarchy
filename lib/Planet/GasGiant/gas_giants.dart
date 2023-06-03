import 'package:dart_application_solar_system/Behavior/rotation.dart';
import 'package:dart_application_solar_system/Planet/planet.dart';

class GasGiant extends Planet {
  List<String> moons;

  GasGiant({
    required this.moons,
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

class Saturn extends GasGiant implements Rotation {
  final int numberOfRings;

  Saturn.info({required this.numberOfRings})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Saturn",
            moons: [
              "Pan",
              "Atlas",
              "Prometheus",
              "Pandora",
              "Epimetheus",
              "Janus"
            ],
            rotationSpeed: 13);
  @override
  void rotate() {
    print(
        "Я вращаюсь против часовой стрелки co скоростью ${super.rotationSpeed}");
  }
}

class Jupupiter extends GasGiant implements Rotation {
  final int numberOfMoons;

  Jupupiter.info({required this.numberOfMoons})
      : super(
            diameter: 12742,
            mass: 5972E21,
            gravity: 9.80665,
            avgTemp: 14,
            name: "Jupiter",
            moons: [
              "Pan",
              "Atlas",
              "Prometheus",
              "Pandora",
              "Epimetheus",
              "Janus"
            ],
            rotationSpeed: 13.07);

  @override
  void rotate() {
    print(
        "Я вращаюсь против часовой стрелки co скоростью ${super.rotationSpeed}");
  }
}
