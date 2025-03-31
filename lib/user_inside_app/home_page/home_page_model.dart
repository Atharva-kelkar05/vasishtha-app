import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? fetchedImage;

  bool showCallButton = false;

  int? docPhone;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - base64ToFile] action in HomePage widget.
  FFUploadedFile? showStoredImage;
  // Stores action output result for [Custom Action - base64ToFile] action in UserImageDisplay widget.
  FFUploadedFile? showImage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
