import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMarkersEntity {
  String title;
  String adress;
  LatLng latLan;
  MapMarkersEntity({
    required this.title,
    required this.adress,
    required this.latLan,
  });
}
