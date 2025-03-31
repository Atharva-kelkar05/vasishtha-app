import '/flutter_flow/flutter_flow_util.dart';
import 'rename_chat_widget.dart' show RenameChatWidget;
import 'package:flutter/material.dart';

class RenameChatModel extends FlutterFlowModel<RenameChatWidget> {
  ///  Local state fields for this component.

  bool chatRenameSuccess = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for EditPhoneNumbe widget.
  FocusNode? editPhoneNumbeFocusNode;
  TextEditingController? editPhoneNumbeTextController;
  String? Function(BuildContext, String?)?
      editPhoneNumbeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editPhoneNumbeFocusNode?.dispose();
    editPhoneNumbeTextController?.dispose();
  }
}
