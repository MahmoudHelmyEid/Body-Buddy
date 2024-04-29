// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
// import 'package:proojecttt/alarm/constans/theme_data.dart';
// import 'package:proojecttt/alarm/data.dart';
import 'package:untitled/alarm/constans/theme_data.dart';
import 'package:untitled/alarm/data.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Alarm',
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w700,
                  color: CustomColors.primaryTextColor,
                  fontSize: 24
              ),
            ),
            Expanded(
              child: ListView(
                children: alarms.map<Widget>((alarm) { /* <Widget> was used here Because the DottedBorder....without it dottedBorder won't work*/
                  return Container(
                    margin: const EdgeInsets.only(bottom: 32),
                    padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: alarm.gradientColors,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: alarm.gradientColors.last.withOpacity(0.4), //last here is for withOpacity to call the sky and sunset colors from alarm.info
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset:Offset(4, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, /* for moving the label icon and switching icon to the right places*/
                          children: <Widget>[
                            Row(
                              children: [
                                Icon(
                                    Icons.label,
                                    color: Colors.white,
                                    size: 24
                                ),
                                SizedBox(width: 8),
                                Text('Vitamin',
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'avenir'),
                                ),
                              ],
                            ),
                            Switch(
                              onChanged: (bool value) {},
                              value: true,
                              activeColor: Colors.white,
                            ),
                          ],
                        ),
                        Text(
                          'Mon-Fri',
                          style: TextStyle(color: Colors.white, fontFamily: 'avenir'),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween, /* for moving the down arrow next to the clock numbers to the right*/
                          children: <Widget>[
                            Text(
                              '07:00 AM',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'avenir',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 36,
                              color: Colors.white,)
                          ],
                        ),
                      ],
                    ),
                  );
                }).followedBy([
                  DottedBorder( /* to make DottedBorder work we used <Widget> with the map above*/
                    strokeWidth: 2,
                    color: CustomColors.clockOutline,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(24),
                    dashPattern: [5, 4],
                    child: Container(
                      width: double.infinity, // we used this to make the color and the photo inside the border fill it
                      decoration: BoxDecoration(
                        color: CustomColors.clockBG,
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        ),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/img/add_alarm.png',
                              scale: 1.5,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Add Alarm',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'avenir'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]).toList(),
              ),
            ),
          ],
        )
    );
  }
}