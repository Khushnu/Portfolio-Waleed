import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart';

class RandomLocationMap extends StatefulWidget {
  const RandomLocationMap({super.key});

  @override
  _RandomLocationMapState createState() => _RandomLocationMapState();
}

class _RandomLocationMapState extends State<RandomLocationMap> {
  LatLng location = const LatLng(33.692352, 73.066055);

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: location,
        initialZoom: 9,
        interactionOptions: const InteractionOptions(
          flags: InteractiveFlag.all,
        ),
      ),
      children: [
        TileLayer(
          tileProvider: CancellableNetworkTileProvider(),
          urlTemplate:
              'https://api.maptiler.com/maps/satellite/{z}/{x}/{y}@2x.jpg?key=Y8MaueVozLV368PAWbR4',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: location,
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/i.png',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
