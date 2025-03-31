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

Future<FFUploadedFile> base64ToFile(String base64String) async {
  // Add your function code here!
  // Decode the base64 string into bytes
  Uint8List fileBytes = base64Decode(base64String);

  // Create and return FFUploadedFile object with the decoded bytes
  return FFUploadedFile(bytes: fileBytes);
}
