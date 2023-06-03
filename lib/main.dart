import 'package:dart_application_solar_system/Planet/GasGiant/gas_giants.dart';
import 'package:dart_application_solar_system/Planet/TerrestrialPlanet/terrestrial_planets.dart';

main() {
  Earth terraPlanet = Earth.info(satellite: "moon");
  terraPlanet.rotate();

  Jupupiter gasPlanet = Jupupiter.info(numberOfMoons: 92);
  gasPlanet.rotate();
}
