abstract class Planet {
  final String name;
  final double diameter;
  final double mass;
  final double gravity;
  final double avgTemp;
  final double rotationSpeed;
  Planet(
      {required this.rotationSpeed,
      required this.name,
      required this.mass,
      required this.diameter,
      required this.gravity,
      required this.avgTemp});
}
