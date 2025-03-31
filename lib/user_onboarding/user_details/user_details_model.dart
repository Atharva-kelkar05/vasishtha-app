import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'user_details_widget.dart' show UserDetailsWidget;
import 'package:flutter/material.dart';

class UserDetailsModel extends FlutterFlowModel<UserDetailsWidget> {
  ///  Local state fields for this page.

  bool photoUploaded = false;

  FFUploadedFile? userImageString;

  FFUploadedFile? imageStringToUploadedFile;

  bool genderSet = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - fileToBase64] action in Container widget.
  String? imageToString;
  // Stores action output result for [Custom Action - base64ToFile] action in Container widget.
  FFUploadedFile? showImage;
  // State field(s) for NameOfUser widget.
  FocusNode? nameOfUserFocusNode;
  TextEditingController? nameOfUserTextController;
  String? Function(BuildContext, String?)? nameOfUserTextControllerValidator;
  String? _nameOfUserTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PhoneOfUser widget.
  FocusNode? phoneOfUserFocusNode;
  TextEditingController? phoneOfUserTextController;
  String? Function(BuildContext, String?)? phoneOfUserTextControllerValidator;
  String? _phoneOfUserTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'You Phone number is required';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('^[6-9]{1}[0-9]{9}\$').hasMatch(val)) {
      return 'Invalid Phone Number';
    }
    return null;
  }

  // State field(s) for GenderChoice widget.
  FormFieldController<List<String>>? genderChoiceValueController;
  String? get genderChoiceValue =>
      genderChoiceValueController?.value?.firstOrNull;
  set genderChoiceValue(String? val) =>
      genderChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for MoreInfoUser widget.
  FocusNode? moreInfoUserFocusNode;
  TextEditingController? moreInfoUserTextController;
  String? Function(BuildContext, String?)? moreInfoUserTextControllerValidator;
  // Stores action output result for [Validate Form] action in LoginButton widget.
  bool? personalDetailsFilled;

  @override
  void initState(BuildContext context) {
    nameOfUserTextControllerValidator = _nameOfUserTextControllerValidator;
    phoneOfUserTextControllerValidator = _phoneOfUserTextControllerValidator;
  }

  @override
  void dispose() {
    nameOfUserFocusNode?.dispose();
    nameOfUserTextController?.dispose();

    phoneOfUserFocusNode?.dispose();
    phoneOfUserTextController?.dispose();

    moreInfoUserFocusNode?.dispose();
    moreInfoUserTextController?.dispose();
  }
}
