// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserJournalsStruct extends FFFirebaseStruct {
  UserJournalsStruct({
    List<String>? userNotesTitle,
    List<String>? userNotesBody,
    DateTime? timeStamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userNotesTitle = userNotesTitle,
        _userNotesBody = userNotesBody,
        _timeStamp = timeStamp,
        super(firestoreUtilData);

  // "userNotesTitle" field.
  List<String>? _userNotesTitle;
  List<String> get userNotesTitle => _userNotesTitle ?? const [];
  set userNotesTitle(List<String>? val) => _userNotesTitle = val;

  void updateUserNotesTitle(Function(List<String>) updateFn) {
    updateFn(_userNotesTitle ??= []);
  }

  bool hasUserNotesTitle() => _userNotesTitle != null;

  // "userNotesBody" field.
  List<String>? _userNotesBody;
  List<String> get userNotesBody => _userNotesBody ?? const [];
  set userNotesBody(List<String>? val) => _userNotesBody = val;

  void updateUserNotesBody(Function(List<String>) updateFn) {
    updateFn(_userNotesBody ??= []);
  }

  bool hasUserNotesBody() => _userNotesBody != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  set timeStamp(DateTime? val) => _timeStamp = val;

  bool hasTimeStamp() => _timeStamp != null;

  static UserJournalsStruct fromMap(Map<String, dynamic> data) =>
      UserJournalsStruct(
        userNotesTitle: getDataList(data['userNotesTitle']),
        userNotesBody: getDataList(data['userNotesBody']),
        timeStamp: data['timeStamp'] as DateTime?,
      );

  static UserJournalsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserJournalsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userNotesTitle': _userNotesTitle,
        'userNotesBody': _userNotesBody,
        'timeStamp': _timeStamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userNotesTitle': serializeParam(
          _userNotesTitle,
          ParamType.String,
          isList: true,
        ),
        'userNotesBody': serializeParam(
          _userNotesBody,
          ParamType.String,
          isList: true,
        ),
        'timeStamp': serializeParam(
          _timeStamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static UserJournalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserJournalsStruct(
        userNotesTitle: deserializeParam<String>(
          data['userNotesTitle'],
          ParamType.String,
          true,
        ),
        userNotesBody: deserializeParam<String>(
          data['userNotesBody'],
          ParamType.String,
          true,
        ),
        timeStamp: deserializeParam(
          data['timeStamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'UserJournalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserJournalsStruct &&
        listEquality.equals(userNotesTitle, other.userNotesTitle) &&
        listEquality.equals(userNotesBody, other.userNotesBody) &&
        timeStamp == other.timeStamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userNotesTitle, userNotesBody, timeStamp]);
}

UserJournalsStruct createUserJournalsStruct({
  DateTime? timeStamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserJournalsStruct(
      timeStamp: timeStamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserJournalsStruct? updateUserJournalsStruct(
  UserJournalsStruct? userJournals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userJournals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserJournalsStructData(
  Map<String, dynamic> firestoreData,
  UserJournalsStruct? userJournals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userJournals == null) {
    return;
  }
  if (userJournals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userJournals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userJournalsData =
      getUserJournalsFirestoreData(userJournals, forFieldValue);
  final nestedData =
      userJournalsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userJournals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserJournalsFirestoreData(
  UserJournalsStruct? userJournals, [
  bool forFieldValue = false,
]) {
  if (userJournals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userJournals.toMap());

  // Add any Firestore field values
  userJournals.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserJournalsListFirestoreData(
  List<UserJournalsStruct>? userJournalss,
) =>
    userJournalss?.map((e) => getUserJournalsFirestoreData(e, true)).toList() ??
    [];
