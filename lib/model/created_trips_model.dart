class CreatedTripsModel {
  final String destination;
  final DateTime fromDate;
  final DateTime toDate;
  final String groupSize;
  final String typeOfGuide;

  const CreatedTripsModel(
      {required this.destination,
      required this.fromDate,
      required this.toDate,
      required this.groupSize,
      required this.typeOfGuide});
}
