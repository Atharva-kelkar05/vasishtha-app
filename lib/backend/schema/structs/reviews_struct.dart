// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReviewsStruct extends FFFirebaseStruct {
  ReviewsStruct({
    String? reviewId,
    String? patientName,
    String? rating,
    String? reviewText,
    String? date,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reviewId = reviewId,
        _patientName = patientName,
        _rating = rating,
        _reviewText = reviewText,
        _date = date,
        super(firestoreUtilData);

  // "review_id" field.
  String? _reviewId;
  String get reviewId => _reviewId ?? '';
  set reviewId(String? val) => _reviewId = val;

  bool hasReviewId() => _reviewId != null;

  // "patient_name" field.
  String? _patientName;
  String get patientName => _patientName ?? '';
  set patientName(String? val) => _patientName = val;

  bool hasPatientName() => _patientName != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  set rating(String? val) => _rating = val;

  bool hasRating() => _rating != null;

  // "review_text" field.
  String? _reviewText;
  String get reviewText => _reviewText ?? '';
  set reviewText(String? val) => _reviewText = val;

  bool hasReviewText() => _reviewText != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  static ReviewsStruct fromMap(Map<String, dynamic> data) => ReviewsStruct(
        reviewId: data['review_id'] as String?,
        patientName: data['patient_name'] as String?,
        rating: data['rating'] as String?,
        reviewText: data['review_text'] as String?,
        date: data['date'] as String?,
      );

  static ReviewsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'review_id': _reviewId,
        'patient_name': _patientName,
        'rating': _rating,
        'review_text': _reviewText,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'review_id': serializeParam(
          _reviewId,
          ParamType.String,
        ),
        'patient_name': serializeParam(
          _patientName,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.String,
        ),
        'review_text': serializeParam(
          _reviewText,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReviewsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewsStruct(
        reviewId: deserializeParam(
          data['review_id'],
          ParamType.String,
          false,
        ),
        patientName: deserializeParam(
          data['patient_name'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.String,
          false,
        ),
        reviewText: deserializeParam(
          data['review_text'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReviewsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewsStruct &&
        reviewId == other.reviewId &&
        patientName == other.patientName &&
        rating == other.rating &&
        reviewText == other.reviewText &&
        date == other.date;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([reviewId, patientName, rating, reviewText, date]);
}

ReviewsStruct createReviewsStruct({
  String? reviewId,
  String? patientName,
  String? rating,
  String? reviewText,
  String? date,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReviewsStruct(
      reviewId: reviewId,
      patientName: patientName,
      rating: rating,
      reviewText: reviewText,
      date: date,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReviewsStruct? updateReviewsStruct(
  ReviewsStruct? reviews, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reviews
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReviewsStructData(
  Map<String, dynamic> firestoreData,
  ReviewsStruct? reviews,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reviews == null) {
    return;
  }
  if (reviews.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reviews.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reviewsData = getReviewsFirestoreData(reviews, forFieldValue);
  final nestedData = reviewsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = reviews.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReviewsFirestoreData(
  ReviewsStruct? reviews, [
  bool forFieldValue = false,
]) {
  if (reviews == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reviews.toMap());

  // Add any Firestore field values
  reviews.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReviewsListFirestoreData(
  List<ReviewsStruct>? reviewss,
) =>
    reviewss?.map((e) => getReviewsFirestoreData(e, true)).toList() ?? [];
