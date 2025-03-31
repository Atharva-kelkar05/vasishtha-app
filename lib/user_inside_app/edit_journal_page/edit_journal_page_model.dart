import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_journal_page_widget.dart' show EditJournalPageWidget;
import 'package:flutter/material.dart';

class EditJournalPageModel extends FlutterFlowModel<EditJournalPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NoteTitle widget.
  FocusNode? noteTitleFocusNode;
  TextEditingController? noteTitleTextController;
  String? Function(BuildContext, String?)? noteTitleTextControllerValidator;
  // State field(s) for MainNotes widget.
  FocusNode? mainNotesFocusNode;
  TextEditingController? mainNotesTextController;
  String? Function(BuildContext, String?)? mainNotesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    noteTitleFocusNode?.dispose();
    noteTitleTextController?.dispose();

    mainNotesFocusNode?.dispose();
    mainNotesTextController?.dispose();
  }
}
