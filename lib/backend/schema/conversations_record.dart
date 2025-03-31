import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversationsRecord extends FirestoreRecord {
  ConversationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "chatTimeCreated" field.
  DateTime? _chatTimeCreated;
  DateTime? get chatTimeCreated => _chatTimeCreated;
  bool hasChatTimeCreated() => _chatTimeCreated != null;

  // "chatTimeEdit" field.
  DateTime? _chatTimeEdit;
  DateTime? get chatTimeEdit => _chatTimeEdit;
  bool hasChatTimeEdit() => _chatTimeEdit != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "conversation" field.
  List<MessageStruct>? _conversation;
  List<MessageStruct> get conversation => _conversation ?? const [];
  bool hasConversation() => _conversation != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _chatTimeCreated = snapshotData['chatTimeCreated'] as DateTime?;
    _chatTimeEdit = snapshotData['chatTimeEdit'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _conversation = getStructList(
      snapshotData['conversation'],
      MessageStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conversations');

  static Stream<ConversationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConversationsRecord.fromSnapshot(s));

  static Future<ConversationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConversationsRecord.fromSnapshot(s));

  static ConversationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConversationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConversationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConversationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConversationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConversationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConversationsRecordData({
  DocumentReference? userRef,
  DateTime? chatTimeCreated,
  DateTime? chatTimeEdit,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'chatTimeCreated': chatTimeCreated,
      'chatTimeEdit': chatTimeEdit,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConversationsRecordDocumentEquality
    implements Equality<ConversationsRecord> {
  const ConversationsRecordDocumentEquality();

  @override
  bool equals(ConversationsRecord? e1, ConversationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.chatTimeCreated == e2?.chatTimeCreated &&
        e1?.chatTimeEdit == e2?.chatTimeEdit &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.conversation, e2?.conversation);
  }

  @override
  int hash(ConversationsRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.chatTimeCreated,
        e?.chatTimeEdit,
        e?.name,
        e?.conversation
      ]);

  @override
  bool isValidKey(Object? o) => o is ConversationsRecord;
}
