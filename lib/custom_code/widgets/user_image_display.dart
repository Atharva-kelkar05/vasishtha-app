// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class UserImageDisplay extends StatefulWidget {
  const UserImageDisplay({
    super.key,
    this.width,
    this.height,
    this.fileBytes,
  });

  final double? width;
  final double? height;
  final FFUploadedFile? fileBytes;

  @override
  State<UserImageDisplay> createState() => _UserImageDisplayState();
}

class _UserImageDisplayState extends State<UserImageDisplay> {
  @override
  Widget build(BuildContext context) {
    // Check if fileBytes or its bytes property is null
    if (widget.fileBytes == null || widget.fileBytes!.bytes == null) {
      return const Center(
          child: Text('No image available')); // Placeholder for missing image
    }

    // Retrieve the image bytes
    final Uint8List? imageBytes = widget.fileBytes!.bytes;
    return Container(
      width: widget.width ?? 100, // Default width if not provided
      height: widget.height ?? 100, // Default height if not provided
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26, // Shadow color
            blurRadius: 8, // Shadow blur
            offset: Offset(0, 4), // Shadow offset
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Match rounded corners
        child: Image.memory(
          imageBytes!, // Display the image using memory bytes
          width: widget.width,
          height: widget.height,
          fit: BoxFit.cover, // Scale image to fit the area proportionally
        ),
      ),
    );
  }
}
