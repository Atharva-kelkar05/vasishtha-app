import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "docRef" field.
  DocumentReference? _docRef;
  DocumentReference? get docRef => _docRef;
  bool hasDocRef() => _docRef != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "feeType" field.
  String? _feeType;
  String get feeType => _feeType ?? '';
  bool hasFeeType() => _feeType != null;

  // "feeAmount" field.
  int? _feeAmount;
  int get feeAmount => _feeAmount ?? 0;
  bool hasFeeAmount() => _feeAmount != null;

  // "paymentStatus" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  bool hasPaymentStatus() => _paymentStatus != null;

  // "appointmentDateTime" field.
  String? _appointmentDateTime;
  String get appointmentDateTime => _appointmentDateTime ?? '';
  bool hasAppointmentDateTime() => _appointmentDateTime != null;

  // "docName" field.
  String? _docName;
  String get docName => _docName ?? '';
  bool hasDocName() => _docName != null;

  // "docPhone" field.
  int? _docPhone;
  int get docPhone => _docPhone ?? 0;
  bool hasDocPhone() => _docPhone != null;

  // "patientName" field.
  String? _patientName;
  String get patientName => _patientName ?? '';
  bool hasPatientName() => _patientName != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _docRef = snapshotData['docRef'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _feeType = snapshotData['feeType'] as String?;
    _feeAmount = castToType<int>(snapshotData['feeAmount']);
    _paymentStatus = snapshotData['paymentStatus'] as String?;
    _appointmentDateTime = snapshotData['appointmentDateTime'] as String?;
    _docName = snapshotData['docName'] as String?;
    _docPhone = castToType<int>(snapshotData['docPhone']);
    _patientName = snapshotData['patientName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  DocumentReference? userRef,
  DocumentReference? docRef,
  DateTime? createdAt,
  String? status,
  String? feeType,
  int? feeAmount,
  String? paymentStatus,
  String? appointmentDateTime,
  String? docName,
  int? docPhone,
  String? patientName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'docRef': docRef,
      'createdAt': createdAt,
      'status': status,
      'feeType': feeType,
      'feeAmount': feeAmount,
      'paymentStatus': paymentStatus,
      'appointmentDateTime': appointmentDateTime,
      'docName': docName,
      'docPhone': docPhone,
      'patientName': patientName,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.docRef == e2?.docRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.feeType == e2?.feeType &&
        e1?.feeAmount == e2?.feeAmount &&
        e1?.paymentStatus == e2?.paymentStatus &&
        e1?.appointmentDateTime == e2?.appointmentDateTime &&
        e1?.docName == e2?.docName &&
        e1?.docPhone == e2?.docPhone &&
        e1?.patientName == e2?.patientName;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.docRef,
        e?.createdAt,
        e?.status,
        e?.feeType,
        e?.feeAmount,
        e?.paymentStatus,
        e?.appointmentDateTime,
        e?.docName,
        e?.docPhone,
        e?.patientName
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
