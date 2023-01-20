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

  ClusterGeoPoint.fromMap(Map<String, dynamic> m)
      : this.geoPoint = GeoPoint(latitude: m['lat'], longitude: m['lon']),
        this.id = m['id'];

  @override
  String toString() {
    return 'id: $id; lat: ${geoPoint.latitude}; lng: ${geoPoint.longitude}';
  }
}
