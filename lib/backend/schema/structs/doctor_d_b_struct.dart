// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorDBStruct extends FFFirebaseStruct {
  DoctorDBStruct({
    String? doctorId,
    String? name,
    String? specialization,
    String? experienceYears,
    String? rating,
    String? distanceKm,
    List<String>? categories,
    String? profileImageUrl,
    String? bio,
    String? totalAppointments,
    List<String>? languagesSpoken,
    List<String>? qualifications,
    AvailabilityStruct? availability,
    ContactMethodsStruct? contactMethods,
    LocationStruct? location,
    List<ReviewsStruct>? reviews,
    FeesStruct? fees,
    List<String>? tags,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _doctorId = doctorId,
        _name = name,
        _specialization = specialization,
        _experienceYears = experienceYears,
        _rating = rating,
        _distanceKm = distanceKm,
        _categories = categories,
        _profileImageUrl = profileImageUrl,
        _bio = bio,
        _totalAppointments = totalAppointments,
        _languagesSpoken = languagesSpoken,
        _qualifications = qualifications,
        _availability = availability,
        _contactMethods = contactMethods,
        _location = location,
        _reviews = reviews,
        _fees = fees,
        _tags = tags,
        super(firestoreUtilData);

  // "doctor_id" field.
  String? _doctorId;
  String get doctorId => _doctorId ?? '';
  set doctorId(String? val) => _doctorId = val;

  bool hasDoctorId() => _doctorId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  set specialization(String? val) => _specialization = val;

  bool hasSpecialization() => _specialization != null;

  // "experience_years" field.
  String? _experienceYears;
  String get experienceYears => _experienceYears ?? '';
  set experienceYears(String? val) => _experienceYears = val;

  bool hasExperienceYears() => _experienceYears != null;

  // "rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  set rating(String? val) => _rating = val;

  bool hasRating() => _rating != null;

  // "distance_km" field.
  String? _distanceKm;
  String get distanceKm => _distanceKm ?? '';
  set distanceKm(String? val) => _distanceKm = val;

  bool hasDistanceKm() => _distanceKm != null;

  // "categories" field.
  List<String>? _categories;
  List<String> get categories => _categories ?? const [];
  set categories(List<String>? val) => _categories = val;

  void updateCategories(Function(List<String>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  // "profile_image_url" field.
  String? _profileImageUrl;
  String get profileImageUrl => _profileImageUrl ?? '';
  set profileImageUrl(String? val) => _profileImageUrl = val;

  bool hasProfileImageUrl() => _profileImageUrl != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  set bio(String? val) => _bio = val;

  bool hasBio() => _bio != null;

  // "total_appointments" field.
  String? _totalAppointments;
  String get totalAppointments => _totalAppointments ?? '';
  set totalAppointments(String? val) => _totalAppointments = val;

  bool hasTotalAppointments() => _totalAppointments != null;

  // "languages_spoken" field.
  List<String>? _languagesSpoken;
  List<String> get languagesSpoken => _languagesSpoken ?? const [];
  set languagesSpoken(List<String>? val) => _languagesSpoken = val;

  void updateLanguagesSpoken(Function(List<String>) updateFn) {
    updateFn(_languagesSpoken ??= []);
  }

  bool hasLanguagesSpoken() => _languagesSpoken != null;

  // "qualifications" field.
  List<String>? _qualifications;
  List<String> get qualifications => _qualifications ?? const [];
  set qualifications(List<String>? val) => _qualifications = val;

  void updateQualifications(Function(List<String>) updateFn) {
    updateFn(_qualifications ??= []);
  }

  bool hasQualifications() => _qualifications != null;

  // "availability" field.
  AvailabilityStruct? _availability;
  AvailabilityStruct get availability => _availability ?? AvailabilityStruct();
  set availability(AvailabilityStruct? val) => _availability = val;

  void updateAvailability(Function(AvailabilityStruct) updateFn) {
    updateFn(_availability ??= AvailabilityStruct());
  }

  bool hasAvailability() => _availability != null;

  // "contact_methods" field.
  ContactMethodsStruct? _contactMethods;
  ContactMethodsStruct get contactMethods =>
      _contactMethods ?? ContactMethodsStruct();
  set contactMethods(ContactMethodsStruct? val) => _contactMethods = val;

  void updateContactMethods(Function(ContactMethodsStruct) updateFn) {
    updateFn(_contactMethods ??= ContactMethodsStruct());
  }

  bool hasContactMethods() => _contactMethods != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "reviews" field.
  List<ReviewsStruct>? _reviews;
  List<ReviewsStruct> get reviews => _reviews ?? const [];
  set reviews(List<ReviewsStruct>? val) => _reviews = val;

  void updateReviews(Function(List<ReviewsStruct>) updateFn) {
    updateFn(_reviews ??= []);
  }

  bool hasReviews() => _reviews != null;

  // "fees" field.
  FeesStruct? _fees;
  FeesStruct get fees => _fees ?? FeesStruct();
  set fees(FeesStruct? val) => _fees = val;

  void updateFees(Function(FeesStruct) updateFn) {
    updateFn(_fees ??= FeesStruct());
  }

  bool hasFees() => _fees != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;

  void updateTags(Function(List<String>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  static DoctorDBStruct fromMap(Map<String, dynamic> data) => DoctorDBStruct(
        doctorId: data['doctor_id'] as String?,
        name: data['name'] as String?,
        specialization: data['specialization'] as String?,
        experienceYears: data['experience_years'] as String?,
        rating: data['rating'] as String?,
        distanceKm: data['distance_km'] as String?,
        categories: getDataList(data['categories']),
        profileImageUrl: data['profile_image_url'] as String?,
        bio: data['bio'] as String?,
        totalAppointments: data['total_appointments'] as String?,
        languagesSpoken: getDataList(data['languages_spoken']),
        qualifications: getDataList(data['qualifications']),
        availability: data['availability'] is AvailabilityStruct
            ? data['availability']
            : AvailabilityStruct.maybeFromMap(data['availability']),
        contactMethods: data['contact_methods'] is ContactMethodsStruct
            ? data['contact_methods']
            : ContactMethodsStruct.maybeFromMap(data['contact_methods']),
        location: data['location'] is LocationStruct
            ? data['location']
            : LocationStruct.maybeFromMap(data['location']),
        reviews: getStructList(
          data['reviews'],
          ReviewsStruct.fromMap,
        ),
        fees: data['fees'] is FeesStruct
            ? data['fees']
            : FeesStruct.maybeFromMap(data['fees']),
        tags: getDataList(data['tags']),
      );

  static DoctorDBStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoctorDBStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'doctor_id': _doctorId,
        'name': _name,
        'specialization': _specialization,
        'experience_years': _experienceYears,
        'rating': _rating,
        'distance_km': _distanceKm,
        'categories': _categories,
        'profile_image_url': _profileImageUrl,
        'bio': _bio,
        'total_appointments': _totalAppointments,
        'languages_spoken': _languagesSpoken,
        'qualifications': _qualifications,
        'availability': _availability?.toMap(),
        'contact_methods': _contactMethods?.toMap(),
        'location': _location?.toMap(),
        'reviews': _reviews?.map((e) => e.toMap()).toList(),
        'fees': _fees?.toMap(),
        'tags': _tags,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'doctor_id': serializeParam(
          _doctorId,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'specialization': serializeParam(
          _specialization,
          ParamType.String,
        ),
        'experience_years': serializeParam(
          _experienceYears,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.String,
        ),
        'distance_km': serializeParam(
          _distanceKm,
          ParamType.String,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
          isList: true,
        ),
        'profile_image_url': serializeParam(
          _profileImageUrl,
          ParamType.String,
        ),
        'bio': serializeParam(
          _bio,
          ParamType.String,
        ),
        'total_appointments': serializeParam(
          _totalAppointments,
          ParamType.String,
        ),
        'languages_spoken': serializeParam(
          _languagesSpoken,
          ParamType.String,
          isList: true,
        ),
        'qualifications': serializeParam(
          _qualifications,
          ParamType.String,
          isList: true,
        ),
        'availability': serializeParam(
          _availability,
          ParamType.DataStruct,
        ),
        'contact_methods': serializeParam(
          _contactMethods,
          ParamType.DataStruct,
        ),
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'reviews': serializeParam(
          _reviews,
          ParamType.DataStruct,
          isList: true,
        ),
        'fees': serializeParam(
          _fees,
          ParamType.DataStruct,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DoctorDBStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoctorDBStruct(
        doctorId: deserializeParam(
          data['doctor_id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        specialization: deserializeParam(
          data['specialization'],
          ParamType.String,
          false,
        ),
        experienceYears: deserializeParam(
          data['experience_years'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.String,
          false,
        ),
        distanceKm: deserializeParam(
          data['distance_km'],
          ParamType.String,
          false,
        ),
        categories: deserializeParam<String>(
          data['categories'],
          ParamType.String,
          true,
        ),
        profileImageUrl: deserializeParam(
          data['profile_image_url'],
          ParamType.String,
          false,
        ),
        bio: deserializeParam(
          data['bio'],
          ParamType.String,
          false,
        ),
        totalAppointments: deserializeParam(
          data['total_appointments'],
          ParamType.String,
          false,
        ),
        languagesSpoken: deserializeParam<String>(
          data['languages_spoken'],
          ParamType.String,
          true,
        ),
        qualifications: deserializeParam<String>(
          data['qualifications'],
          ParamType.String,
          true,
        ),
        availability: deserializeStructParam(
          data['availability'],
          ParamType.DataStruct,
          false,
          structBuilder: AvailabilityStruct.fromSerializableMap,
        ),
        contactMethods: deserializeStructParam(
          data['contact_methods'],
          ParamType.DataStruct,
          false,
          structBuilder: ContactMethodsStruct.fromSerializableMap,
        ),
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        reviews: deserializeStructParam<ReviewsStruct>(
          data['reviews'],
          ParamType.DataStruct,
          true,
          structBuilder: ReviewsStruct.fromSerializableMap,
        ),
        fees: deserializeStructParam(
          data['fees'],
          ParamType.DataStruct,
          false,
          structBuilder: FeesStruct.fromSerializableMap,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DoctorDBStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DoctorDBStruct &&
        doctorId == other.doctorId &&
        name == other.name &&
        specialization == other.specialization &&
        experienceYears == other.experienceYears &&
        rating == other.rating &&
        distanceKm == other.distanceKm &&
        listEquality.equals(categories, other.categories) &&
        profileImageUrl == other.profileImageUrl &&
        bio == other.bio &&
        totalAppointments == other.totalAppointments &&
        listEquality.equals(languagesSpoken, other.languagesSpoken) &&
        listEquality.equals(qualifications, other.qualifications) &&
        availability == other.availability &&
        contactMethods == other.contactMethods &&
        location == other.location &&
        listEquality.equals(reviews, other.reviews) &&
        fees == other.fees &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode => const ListEquality().hash([
        doctorId,
        name,
        specialization,
        experienceYears,
        rating,
        distanceKm,
        categories,
        profileImageUrl,
        bio,
        totalAppointments,
        languagesSpoken,
        qualifications,
        availability,
        contactMethods,
        location,
        reviews,
        fees,
        tags
      ]);
}

DoctorDBStruct createDoctorDBStruct({
  String? doctorId,
  String? name,
  String? specialization,
  String? experienceYears,
  String? rating,
  String? distanceKm,
  String? profileImageUrl,
  String? bio,
  String? totalAppointments,
  AvailabilityStruct? availability,
  ContactMethodsStruct? contactMethods,
  LocationStruct? location,
  FeesStruct? fees,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DoctorDBStruct(
      doctorId: doctorId,
      name: name,
      specialization: specialization,
      experienceYears: experienceYears,
      rating: rating,
      distanceKm: distanceKm,
      profileImageUrl: profileImageUrl,
      bio: bio,
      totalAppointments: totalAppointments,
      availability:
          availability ?? (clearUnsetFields ? AvailabilityStruct() : null),
      contactMethods:
          contactMethods ?? (clearUnsetFields ? ContactMethodsStruct() : null),
      location: location ?? (clearUnsetFields ? LocationStruct() : null),
      fees: fees ?? (clearUnsetFields ? FeesStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DoctorDBStruct? updateDoctorDBStruct(
  DoctorDBStruct? doctorDB, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    doctorDB
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDoctorDBStructData(
  Map<String, dynamic> firestoreData,
  DoctorDBStruct? doctorDB,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (doctorDB == null) {
    return;
  }
  if (doctorDB.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && doctorDB.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final doctorDBData = getDoctorDBFirestoreData(doctorDB, forFieldValue);
  final nestedData = doctorDBData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = doctorDB.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDoctorDBFirestoreData(
  DoctorDBStruct? doctorDB, [
  bool forFieldValue = false,
]) {
  if (doctorDB == null) {
    return {};
  }
  final firestoreData = mapToFirestore(doctorDB.toMap());

  // Handle nested data for "availability" field.
  addAvailabilityStructData(
    firestoreData,
    doctorDB.hasAvailability() ? doctorDB.availability : null,
    'availability',
    forFieldValue,
  );

  // Handle nested data for "contact_methods" field.
  addContactMethodsStructData(
    firestoreData,
    doctorDB.hasContactMethods() ? doctorDB.contactMethods : null,
    'contact_methods',
    forFieldValue,
  );

  // Handle nested data for "location" field.
  addLocationStructData(
    firestoreData,
    doctorDB.hasLocation() ? doctorDB.location : null,
    'location',
    forFieldValue,
  );

  // Handle nested data for "fees" field.
  addFeesStructData(
    firestoreData,
    doctorDB.hasFees() ? doctorDB.fees : null,
    'fees',
    forFieldValue,
  );

  // Add any Firestore field values
  doctorDB.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDoctorDBListFirestoreData(
  List<DoctorDBStruct>? doctorDBs,
) =>
    doctorDBs?.map((e) => getDoctorDBFirestoreData(e, true)).toList() ?? [];
