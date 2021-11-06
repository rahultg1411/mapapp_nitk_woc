import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _markers = {};
  late BitmapDescriptor customMarker1;
  late BitmapDescriptor customMarker2;
  late BitmapDescriptor customMarker3;
  late BitmapDescriptor customMarker4;
  late BitmapDescriptor customMarker5;
  late BitmapDescriptor customMarker6;
  late BitmapDescriptor customMarker7;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setCustomMarker1();
    setCustomMarker2();
    setCustomMarker3();
    setCustomMarker4();
    setCustomMarker5();
    setCustomMarker6();
    setCustomMarker7();
  }

  void setCustomMarker1() async {
    customMarker1 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/beach.png');
  }

  void setCustomMarker2() async {
    customMarker2 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/hostel.png');
  }

  void setCustomMarker3() async {
    customMarker3 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/itdept.png');
  }

  void setCustomMarker4() async {
    customMarker4 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/lighthouse.png');
  }

  void setCustomMarker5() async {
    customMarker5 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/mainbldg.png');
  }

  void setCustomMarker6() async {
    customMarker6 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/nandini.png');
  }

  void setCustomMarker7() async {
    customMarker7 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'icons/sports.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('beach'),
          position: LatLng(13.010190, 74.788409),
          icon: customMarker1,
          infoWindow: InfoWindow(
              title: 'NITK Beach', snippet: 'The famed beach of NITK'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('hostel'),
          position: LatLng(13.006933, 74.795997),
          icon: customMarker2,
          infoWindow: InfoWindow(
              title: 'Boy\'s Hostel', snippet: 'The boy\'s hostel in NITK'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('itdept'),
          position: LatLng(13.010935, 74.792235),
          icon: customMarker3,
          infoWindow: InfoWindow(
              title: 'IT Department',
              snippet: 'Department of Information Technology'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('lighthouse'),
          position: LatLng(13.004683, 74.789719),
          icon: customMarker4,
          infoWindow: InfoWindow(
              title: 'Lighthouse', snippet: 'A lighthouse on the beach'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('Main Building'),
          position: LatLng(13.010791, 74.794335),
          icon: customMarker5,
          infoWindow: InfoWindow(
              title: 'Main Building',
              snippet: 'The main building of the college'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('nandini'),
          position: LatLng(13.006911, 74.794430),
          icon: customMarker6,
          infoWindow: InfoWindow(
              title: 'Nandini', snippet: 'A Nandini store in the campus'),
        ),
      );
      _markers.add(
        Marker(
          markerId: MarkerId('sports'),
          position: LatLng(13.008992, 74.797064),
          icon: customMarker7,
          infoWindow: InfoWindow(
              title: 'Sports Complex', snippet: 'The NITK sports complex'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NITK Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _markers,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            13.009943,
            74.797297,
          ),
          zoom: 14,
        ),
      ),
    );
  }
}
