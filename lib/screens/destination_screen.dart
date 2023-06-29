import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Colors,
        Column,
        Container,
        IconButton,
        Icons,
        MediaQuery,
        Offset,
        Scaffold,
        Stack,
        State,
        StatefulWidget,
        Widget;
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({super.key, required this.destination});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.search),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(Icons.sort),
                          iconSize: 25.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          widget.destination.country,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
