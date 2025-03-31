// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvailabilityStruct extends FFFirebaseStruct {
  AvailabilityStruct({
    List<String>? days,
    List<String>? timeSlots,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _days = days,
        _timeSlots = timeSlots,
        super(firestoreUtilData);

  // "days" field.
  List<String>? _days;
  List<String> get days => _days ?? const [];
  set days(List<String>? val) => _days = val;

  void updateDays(Function(List<String>) updateFn) {
    updateFn(_days ??= []);
  }

  bool hasDays() => _days != null;

  // "time_slots" field.
  List<String>? _timeSlots;
  List<String> get timeSlots => _timeSlots ?? const [];
  set timeSlots(List<String>? val) => _timeSlots = val;

  void updateTimeSlots(Function(List<String>) updateFn) {
    updateFn(_timeSlots ??= []);
  }

  bool hasTimeSlots() => _timeSlots != null;

  static AvailabilityStruct fromMap(Map<String, dynamic> data) =>
      AvailabilityStruct(
        days: getDataList(data['days']),
        timeSlots: getDataList(data['time_slots']),
      );

  static AvailabilityStruct? maybeFromMap(dynamic data) => data is Map
      ? AvailabilityStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'days': _days,
        'time_slots': _timeSlots,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'days': serializeParam(
          _days,
          ParamType.String,
          isList: true,
        ),
        'time_slots': serializeParam(
          _timeSlots,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AvailabilityStruct fromSerializableMap(Map<String, dynamic> data) =>
      AvailabilityStruct(
        days: deserializeParam<String>(
          data['days'],
          ParamType.String,
          true,
        ),
        timeSlots: deserializeParam<String>(
          data['time_slots'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AvailabilityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AvailabilityStruct &&
        listEquality.equals(days, other.days) &&
        listEquality.equals(timeSlots, other.timeSlots);
  }

  @override
  int get hashCode => const ListEquality().hash([days, timeSlots]);
}

AvailabilityStruct createAvailabilityStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AvailabilityStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AvailabilityStruct? updateAvailabilityStruct(
  AvailabilityStruct? availability, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    availability
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAvailabilityStructData(
  Map<String, dynamic> firestoreData,
  AvailabilityStruct? availability,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (availability == null) {
    return;
  }
  if (availability.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && availability.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final availabilityData =
      getAvailabilityFirestoreData(availability, forFieldValue);
  final nestedData =
      availabilityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = availability.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAvailabilityFirestoreData(
  AvailabilityStruct? availability, [
  bool forFieldValue = false,
]) {
  if (availability == null) {
    return {};
  }
  final firestoreData = mapToFirestore(availability.toMap());

  // Add any Firestore field values
  availability.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAvailabilityListFirestoreData(
  List<AvailabilityStruct>? availabilitys,
) =>
    availabilitys?.map((e) => getAvailabilityFirestoreData(e, true)).toList() ??
    [];
