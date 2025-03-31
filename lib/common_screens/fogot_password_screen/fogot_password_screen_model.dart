import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'fogot_password_screen_widget.dart' show FogotPasswordScreenWidget;
import 'package:flutter/material.dart';

class FogotPasswordScreenModel
    extends FlutterFlowModel<FogotPasswordScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailPhone widget.
  FocusNode? emailPhoneFocusNode;
  TextEditingController? emailPhoneTextController;
  String? Function(BuildContext, String?)? emailPhoneTextControllerValidator;
  String? _emailPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter you email address is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'PLease enter a valid email address.';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in NextButton widget.
  bool? validEmail;

  @override
  void initState(BuildContext context) {
    emailPhoneTextControllerValidator = _emailPhoneTextControllerValidator;
  }

  @override
  void dispose() {
    emailPhoneFocusNode?.dispose();
    emailPhoneTextController?.dispose();
  }
}
