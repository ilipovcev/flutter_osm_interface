import 'package:flutter/material.dart';
import 'package:flutter_osm_interface/flutter_osm_interface.dart';

class ClusterGeoPoint {
  final String id;
  final GeoPoint geoPoint;
  final GlobalKey<State<StatefulWidget>>? markerIcon;

  ClusterGeoPoint({
    required this.id,
    required this.geoPoint,
    this.markerIcon = null,
  });

  Future<Map<String, Object>> toMap() async {
    final icon =
        markerIcon != null ? await capturePng(markerIcon!) : Future.value(null);
    return {
      "lon": geoPoint.longitude,
      "lat": geoPoint.latitude,
      "icon": icon,
      "id": id,
    };
  }
}
