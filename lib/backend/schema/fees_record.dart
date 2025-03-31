import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeesRecord extends FirestoreRecord {
  FeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "consultationFee" field.
  int? _consultationFee;
  int get consultationFee => _consultationFee ?? 0;
  bool hasConsultationFee() => _consultationFee != null;

  // "chatFee" field.
  int? _chatFee;
  int get chatFee => _chatFee ?? 0;
  bool hasChatFee() => _chatFee != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _consultationFee = castToType<int>(snapshotData['consultationFee']);
    _chatFee = castToType<int>(snapshotData['chatFee']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('fees')
          : FirebaseFirestore.instance.collectionGroup('fees');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('fees').doc(id);

  static Stream<FeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeesRecord.fromSnapshot(s));

  static Future<FeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeesRecord.fromSnapshot(s));

  static FeesRecord fromSnapshot(DocumentSnapshot snapshot) => FeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeesRecordData({
  int? consultationFee,
  int? chatFee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'consultationFee': consultationFee,
      'chatFee': chatFee,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeesRecordDocumentEquality implements Equality<FeesRecord> {
  const FeesRecordDocumentEquality();

  @override
  bool equals(FeesRecord? e1, FeesRecord? e2) {
    return e1?.consultationFee == e2?.consultationFee &&
        e1?.chatFee == e2?.chatFee;
  }

  @override
  int hash(FeesRecord? e) =>
      const ListEquality().hash([e?.consultationFee, e?.chatFee]);

  @override
  bool isValidKey(Object? o) => o is FeesRecord;
}
