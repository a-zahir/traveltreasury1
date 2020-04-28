import 'package:flutter/material.dart';
import 'package:traveltreasury/trip.dart';
import 'package:intl/intl.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip('New York', DateTime.now(), DateTime.now(), 200.0, 'Car'),
    Trip('Boston', DateTime.now(), DateTime.now(), 450.0, 'Plane'),
    Trip('Washington D.C.', DateTime.now(), DateTime.now(), 650.0, 'Car'),
    Trip('Austin', DateTime.now(), DateTime.now(), 350.0, 'Car')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: tripsList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildTripCard(context, index);
        },
      ),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripsList[index];
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      trip.title,
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
                child: Row(
                  children: <Widget>[
                    Text(
                        '${DateFormat('dd / MM / yyyy').format(trip.startDate).toString()} - ${DateFormat('dd / MM / yyyy').format(trip.startDate).toString()}'),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '\$${trip.budget.toStringAsFixed(2)}',
                      style: new TextStyle(fontSize: 35),
                    ),
                    Spacer(),
                    Icon(Icons.directions_car),
                    Text(trip.travelType),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
