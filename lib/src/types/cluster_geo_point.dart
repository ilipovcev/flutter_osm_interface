import 'package:flutter_osm_interface/flutter_osm_interface.dart';

class ClusterGeoPoint {
  final String id;
  final GeoPoint geoPoint;

  ClusterGeoPoint({
    required this.id,
    required this.geoPoint,
  });

  Map<String, Object> toMap() {
    return {
      "lon": geoPoint.longitude,
      "lat": geoPoint.latitude,
      "id": id,
    };
  }
}
