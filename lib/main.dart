import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(DonerAtyrau());
}

class DonerAtyrau extends StatefulWidget {
  @override
  _DonerAtyrauState createState() => _DonerAtyrauState();
}

class _DonerAtyrauState extends State<DonerAtyrau> {
  GoogleMapController mapController;
  final Set<Marker> _markers = {};

  final LatLng _DOnerKing = const LatLng(-5.8429152, 85.3875462);
  final String __DOnerKingStr = "-5.8429152, 85.3875462";
  final LatLng _qiscus = const LatLng(-36.8860708, 70.3920556);
  final String _qiscusStr = "-36.8860708, 70.3920556";

  @override
  void initState() {
    _markers.add(
      Marker(
          markerId: MarkerId(__DOnerKingStr),
          position: _DOnerKing,
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: "DonerKing Atyrau")),
    );
    _markers.add(
      Marker(
          markerId: MarkerId(_qiscusStr),
          position: _qiscus,
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: "Doner Atyrau")),
    );
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DonerKing тек кана алга'),
          backgroundColor: Colors.green[400],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _DOnerKing, zoom: 12.0),
          markers: _markers,
        ),
      ),
    );
  }
}
