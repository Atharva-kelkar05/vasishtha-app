import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserJournalRecord extends FirestoreRecord {
  UserJournalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userNoteTitle" field.
  String? _userNoteTitle;
  String get userNoteTitle => _userNoteTitle ?? '';
  bool hasUserNoteTitle() => _userNoteTitle != null;

  // "userNoteBody" field.
  String? _userNoteBody;
  String get userNoteBody => _userNoteBody ?? '';
  bool hasUserNoteBody() => _userNoteBody != null;

  // "userNoteTime" field.
  DateTime? _userNoteTime;
  DateTime? get userNoteTime => _userNoteTime;
  bool hasUserNoteTime() => _userNoteTime != null;

  // "userRef" field.
  String? _userRef;
  String get userRef => _userRef ?? '';
  bool hasUserRef() => _userRef != null;

  // "noteEditTime" field.
  DateTime? _noteEditTime;
  DateTime? get noteEditTime => _noteEditTime;
  bool hasNoteEditTime() => _noteEditTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userNoteTitle = snapshotData['userNoteTitle'] as String?;
    _userNoteBody = snapshotData['userNoteBody'] as String?;
    _userNoteTime = snapshotData['userNoteTime'] as DateTime?;
    _userRef = snapshotData['userRef'] as String?;
    _noteEditTime = snapshotData['noteEditTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userJournal')
          : FirebaseFirestore.instance.collectionGroup('userJournal');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('userJournal').doc(id);

  static Stream<UserJournalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserJournalRecord.fromSnapshot(s));

  static Future<UserJournalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserJournalRecord.fromSnapshot(s));

  static UserJournalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserJournalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserJournalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserJournalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserJournalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserJournalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserJournalRecordData({
  String? userNoteTitle,
  String? userNoteBody,
  DateTime? userNoteTime,
  String? userRef,
  DateTime? noteEditTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userNoteTitle': userNoteTitle,
      'userNoteBody': userNoteBody,
      'userNoteTime': userNoteTime,
      'userRef': userRef,
      'noteEditTime': noteEditTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserJournalRecordDocumentEquality implements Equality<UserJournalRecord> {
  const UserJournalRecordDocumentEquality();

  @override
  bool equals(UserJournalRecord? e1, UserJournalRecord? e2) {
    return e1?.userNoteTitle == e2?.userNoteTitle &&
        e1?.userNoteBody == e2?.userNoteBody &&
        e1?.userNoteTime == e2?.userNoteTime &&
        e1?.userRef == e2?.userRef &&
        e1?.noteEditTime == e2?.noteEditTime;
  }

  @override
  int hash(UserJournalRecord? e) => const ListEquality().hash([
        e?.userNoteTitle,
        e?.userNoteBody,
        e?.userNoteTime,
        e?.userRef,
        e?.noteEditTime
      ]);

  @override
  bool isValidKey(Object? o) => o is UserJournalRecord;
}
