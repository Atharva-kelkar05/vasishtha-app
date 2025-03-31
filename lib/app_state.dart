import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userImageByteToString =
          prefs.getString('ff_userImageByteToString') ?? _userImageByteToString;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userImageByteToString = '';
  String get userImageByteToString => _userImageByteToString;
  set userImageByteToString(String value) {
    _userImageByteToString = value;
    prefs.setString('ff_userImageByteToString', value);
  }

  String _selectedDocName = '';
  String get selectedDocName => _selectedDocName;
  set selectedDocName(String value) {
    _selectedDocName = value;
  }

  final _doctorDetailManager = StreamRequestManager<List<DoctorsRecord>>();
  Stream<List<DoctorsRecord>> doctorDetail({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<DoctorsRecord>> Function() requestFn,
  }) =>
      _doctorDetailManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDoctorDetailCache() => _doctorDetailManager.clear();
  void clearDoctorDetailCacheKey(String? uniqueKey) =>
      _doctorDetailManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
