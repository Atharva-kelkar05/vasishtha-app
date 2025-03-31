// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ContactMethodsStruct extends FFFirebaseStruct {
  ContactMethodsStruct({
    String? appointmentLink,
    String? chatLink,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _appointmentLink = appointmentLink,
        _chatLink = chatLink,
        super(firestoreUtilData);

  // "appointment_link" field.
  String? _appointmentLink;
  String get appointmentLink => _appointmentLink ?? '';
  set appointmentLink(String? val) => _appointmentLink = val;

  bool hasAppointmentLink() => _appointmentLink != null;

  // "chat_link" field.
  String? _chatLink;
  String get chatLink => _chatLink ?? '';
  set chatLink(String? val) => _chatLink = val;

  bool hasChatLink() => _chatLink != null;

  static ContactMethodsStruct fromMap(Map<String, dynamic> data) =>
      ContactMethodsStruct(
        appointmentLink: data['appointment_link'] as String?,
        chatLink: data['chat_link'] as String?,
      );

  static ContactMethodsStruct? maybeFromMap(dynamic data) => data is Map
      ? ContactMethodsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'appointment_link': _appointmentLink,
        'chat_link': _chatLink,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'appointment_link': serializeParam(
          _appointmentLink,
          ParamType.String,
        ),
        'chat_link': serializeParam(
          _chatLink,
          ParamType.String,
        ),
      }.withoutNulls;

  static ContactMethodsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ContactMethodsStruct(
        appointmentLink: deserializeParam(
          data['appointment_link'],
          ParamType.String,
          false,
        ),
        chatLink: deserializeParam(
          data['chat_link'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ContactMethodsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ContactMethodsStruct &&
        appointmentLink == other.appointmentLink &&
        chatLink == other.chatLink;
  }

  @override
  int get hashCode => const ListEquality().hash([appointmentLink, chatLink]);
}

ContactMethodsStruct createContactMethodsStruct({
  String? appointmentLink,
  String? chatLink,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ContactMethodsStruct(
      appointmentLink: appointmentLink,
      chatLink: chatLink,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ContactMethodsStruct? updateContactMethodsStruct(
  ContactMethodsStruct? contactMethods, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    contactMethods
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addContactMethodsStructData(
  Map<String, dynamic> firestoreData,
  ContactMethodsStruct? contactMethods,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (contactMethods == null) {
    return;
  }
  if (contactMethods.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && contactMethods.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final contactMethodsData =
      getContactMethodsFirestoreData(contactMethods, forFieldValue);
  final nestedData =
      contactMethodsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = contactMethods.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getContactMethodsFirestoreData(
  ContactMethodsStruct? contactMethods, [
  bool forFieldValue = false,
]) {
  if (contactMethods == null) {
    return {};
  }
  final firestoreData = mapToFirestore(contactMethods.toMap());

  // Add any Firestore field values
  contactMethods.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getContactMethodsListFirestoreData(
  List<ContactMethodsStruct>? contactMethodss,
) =>
    contactMethodss
        ?.map((e) => getContactMethodsFirestoreData(e, true))
        .toList() ??
    [];
