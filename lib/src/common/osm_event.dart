import 'package:flutter_osm_interface/flutter_osm_interface.dart';

import '../types/types.dart';

abstract class EventOSM<T> {
  /// The ID of the Map this event is associated to.
  final int mapId;

  /// The value wrapped by this event
  final T value;

  /// Build a Map Event, that relates a mapId with a given value.
  ///
  /// The `mapId` is the id of the map that triggered the event.
  /// `value` may be `null` in events that don't transport any meaningful data.
  EventOSM(this.mapId, this.value);
}

class MapInitialization extends EventOSM<bool> {
  MapInitialization(int mapId, bool isMapReady) : super(mapId, isMapReady);
}

class MapRestoration extends EventOSM<void> {
  MapRestoration(
    int mapId,
  ) : super(
          mapId,
          null,
        );
}

class TapEvent extends EventOSM<GeoPoint> {
  TapEvent(int mapId, GeoPoint position) : super(mapId, position);
}

class MarkerTapEvent extends EventOSM<ClusterGeoPoint> {
  MarkerTapEvent(int mapId, ClusterGeoPoint clusterGeoPoint)
      : super(mapId, clusterGeoPoint);
}

class SingleTapEvent extends TapEvent {
  SingleTapEvent(int mapId, GeoPoint position) : super(mapId, position);
}

class StopMarkerTapEvent extends EventOSM<ClusterGeoPoint> {
  StopMarkerTapEvent(int mapId, ClusterGeoPoint clusterGeoPoint)
      : super(mapId, clusterGeoPoint);
}

class LocationMarkerTapEvent extends EventOSM<ClusterGeoPoint> {
  LocationMarkerTapEvent(int mapId, ClusterGeoPoint clusterGeoPoint)
      : super(mapId, clusterGeoPoint);
}

class ClusterMarkerTapEvent extends EventOSM<ClusterGeoPoint> {
  ClusterMarkerTapEvent(int mapId, ClusterGeoPoint clusterGeoPoint)
      : super(mapId, clusterGeoPoint);
}

class LongTapEvent extends TapEvent {
  LongTapEvent(int mapId, GeoPoint position) : super(mapId, position);
}

class GeoPointEvent extends EventOSM<GeoPoint> {
  GeoPointEvent(int mapId, GeoPoint position) : super(mapId, position);
}

class UserLocationEvent extends EventOSM<GeoPoint> {
  UserLocationEvent(int mapId, GeoPoint position) : super(mapId, position);
}

class RegionIsChangingEvent extends EventOSM<Region> {
  RegionIsChangingEvent(int mapId, Region region) : super(mapId, region);
}
