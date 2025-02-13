import 'dart:collection';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';


class Maps_Italien extends StatefulWidget{
  @override
  _Maps_ItalienState createState() => _Maps_ItalienState();
}

class _Maps_ItalienState extends State<Maps_Italien> {
  var myMarkers = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WherEat Maps',
           style: TextStyle(
            fontSize: 30,
             color: Color(0xFFECE7B4),
        )
      ),

        centerTitle: true,
        backgroundColor: Color(0xFF406343),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(35.69111, -0.64167), zoom: 15.5,),
            onMapCreated:(GoogleMapController googleMapController){
              setState(() {
              myMarkers.add(
                Marker(
                  markerId: MarkerId('1'),
                  position: LatLng(35.69111, -0.64167),
                ),
              );
              });  
            },
              markers: myMarkers,

          ),
          Container(
            child: Text('r'),
            alignment: Alignment.bottomLeft,
          )
        ],
      )
      
    );
  }
}

