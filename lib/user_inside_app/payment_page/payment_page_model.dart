import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/material.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  Local state fields for this page.

  String? fees;

  bool appointTypeSet = false;

  bool dateSelected = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AppointmentTypeChoice widget.
  FormFieldController<List<String>>? appointmentTypeChoiceValueController;
  String? get appointmentTypeChoiceValue =>
      appointmentTypeChoiceValueController?.value?.firstOrNull;
  set appointmentTypeChoiceValue(String? val) =>
      appointmentTypeChoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for AppointmentDateTimeChoice widget.
  FormFieldController<List<String>>? appointmentDateTimeChoiceValueController;
  String? get appointmentDateTimeChoiceValue =>
      appointmentDateTimeChoiceValueController?.value?.firstOrNull;
  set appointmentDateTimeChoiceValue(String? val) =>
      appointmentDateTimeChoiceValueController?.value =
          val != null ? [val] : [];
  // State field(s) for RemarksNotes widget.
  FocusNode? remarksNotesFocusNode;
  TextEditingController? remarksNotesTextController;
  String? Function(BuildContext, String?)? remarksNotesTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in LoginButton widget.
  AppointmentsRecord? bookedAppointment;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    remarksNotesFocusNode?.dispose();
    remarksNotesTextController?.dispose();
  }
}
