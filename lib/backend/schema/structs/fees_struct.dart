// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FeesStruct extends FFFirebaseStruct {
  FeesStruct({
    String? consultationFee,
    String? chatFee,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _consultationFee = consultationFee,
        _chatFee = chatFee,
        super(firestoreUtilData);

  // "consultation_fee" field.
  String? _consultationFee;
  String get consultationFee => _consultationFee ?? '';
  set consultationFee(String? val) => _consultationFee = val;

  bool hasConsultationFee() => _consultationFee != null;

  // "chat_fee" field.
  String? _chatFee;
  String get chatFee => _chatFee ?? '';
  set chatFee(String? val) => _chatFee = val;

  bool hasChatFee() => _chatFee != null;

  static FeesStruct fromMap(Map<String, dynamic> data) => FeesStruct(
        consultationFee: data['consultation_fee'] as String?,
        chatFee: data['chat_fee'] as String?,
      );

  static FeesStruct? maybeFromMap(dynamic data) =>
      data is Map ? FeesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'consultation_fee': _consultationFee,
        'chat_fee': _chatFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'consultation_fee': serializeParam(
          _consultationFee,
          ParamType.String,
        ),
        'chat_fee': serializeParam(
          _chatFee,
          ParamType.String,
        ),
      }.withoutNulls;

  static FeesStruct fromSerializableMap(Map<String, dynamic> data) =>
      FeesStruct(
        consultationFee: deserializeParam(
          data['consultation_fee'],
          ParamType.String,
          false,
        ),
        chatFee: deserializeParam(
          data['chat_fee'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FeesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FeesStruct &&
        consultationFee == other.consultationFee &&
        chatFee == other.chatFee;
  }

  @override
  int get hashCode => const ListEquality().hash([consultationFee, chatFee]);
}

FeesStruct createFeesStruct({
  String? consultationFee,
  String? chatFee,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FeesStruct(
      consultationFee: consultationFee,
      chatFee: chatFee,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FeesStruct? updateFeesStruct(
  FeesStruct? fees, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    fees
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFeesStructData(
  Map<String, dynamic> firestoreData,
  FeesStruct? fees,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (fees == null) {
    return;
  }
  if (fees.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && fees.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final feesData = getFeesFirestoreData(fees, forFieldValue);
  final nestedData = feesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = fees.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFeesFirestoreData(
  FeesStruct? fees, [
  bool forFieldValue = false,
]) {
  if (fees == null) {
    return {};
  }
  final firestoreData = mapToFirestore(fees.toMap());

  // Add any Firestore field values
  fees.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFeesListFirestoreData(
  List<FeesStruct>? feess,
) =>
    feess?.map((e) => getFeesFirestoreData(e, true)).toList() ?? [];
