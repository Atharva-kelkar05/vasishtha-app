// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';

Future<String> fileToBase64(FFUploadedFile fileBytes) async {
  // Add your function code here!
  // Ensure file has bytes
  if (fileBytes.bytes != null) {
    return base64Encode(fileBytes.bytes!); // Extract bytes and encode to base64
  } else {
    throw Exception('File bytes are null');
  }
}
