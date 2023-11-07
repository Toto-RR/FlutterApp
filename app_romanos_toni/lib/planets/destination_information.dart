class DestinationInformation {
  final String travelerName, planetName, imageUrl, typePlanet, description;
  final int moons, lengthOfYear, distanceToSun;

  const DestinationInformation({
    required this.travelerName,
    required this.planetName,
    required this.moons,
    required this.typePlanet,
    required this.lengthOfYear,
    required this.distanceToSun,
    required this.imageUrl,
    required this.description,
  });
}
