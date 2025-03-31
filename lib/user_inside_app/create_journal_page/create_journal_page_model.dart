import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_journal_page_widget.dart' show CreateJournalPageWidget;
import 'package:flutter/material.dart';

class CreateJournalPageModel extends FlutterFlowModel<CreateJournalPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NoteTitle widget.
  FocusNode? noteTitleFocusNode;
  TextEditingController? noteTitleTextController;
  String? Function(BuildContext, String?)? noteTitleTextControllerValidator;
  // State field(s) for MainNotes widget.
  FocusNode? mainNotesFocusNode;
  TextEditingController? mainNotesTextController;
  String? Function(BuildContext, String?)? mainNotesTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserJournalRecord? documentCreated;

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
