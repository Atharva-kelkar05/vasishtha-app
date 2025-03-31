import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String greetUser() {
  final currentTime = DateTime.now();
  final hour = currentTime.hour;
  if (hour < 12) {
    return 'Morning';
  } else if (hour < 18) {
    return 'Afternoon';
  } else {
    return 'Evening';
  }
}

Color? getRandomGreenShade() {
  // Color(0xFF6D6942),     Color(0xFF585C3B),     Color(0xFF604B3E),     Color(0xFF5D513E),     Color(0xFF8E9C63),     Color(0x4DACC420), help me create a function which randomly returns any one of these color codes.
  List<Color> colors = [
    Color(0xFF6D6942),
    Color(0xFF585C3B),
    Color(0xFF604B3E),
    Color(0xFF5D513E),
    Color(0xFF8E9C63),
  ];
  return colors[math.Random().nextInt(colors.length)];
}
