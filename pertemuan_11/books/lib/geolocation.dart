import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  Future<Position>? position;
  String myPosition = '';
  @override
  void initState() {
    super.initState();
    position = getPosition();
    // getPosition().then((Position myPos){
    //   myPosition = 'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
    //   setState((){
    //     myPosition = myPosition;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    final myWidget =
        myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Alhamdana'),
      ),
      body: Center(
        child: FutureBuilder(
            future: position,
            builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                return Text(snapshot.data.toString());
              } else {
                return const Text('Error');
              }
            }),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Location Alhamdana'),
    //   ),
    //   body: Center(
    //     child: Center(child: Text(myPosition)),
    //   ),
    // );
  }

  Future<Position> getPosition() async {
    // Future.delayed(const Duration(seconds: 3));
    // await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    await Future.delayed(const Duration(seconds: 3));
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }
}
