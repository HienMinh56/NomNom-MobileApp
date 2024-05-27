import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantRecord extends FirestoreRecord {
  RestaurantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "restaurantId" field.
  int? _restaurantId;
  int get restaurantId => _restaurantId ?? 0;
  bool hasRestaurantId() => _restaurantId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _rate = castToType<double>(snapshotData['rate']);
    _img = snapshotData['img'] as String?;
    _category = snapshotData['category'] as String?;
    _description = snapshotData['description'] as String?;
    _restaurantId = castToType<int>(snapshotData['restaurantId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurant');

  static Stream<RestaurantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantRecord.fromSnapshot(s));

  static Future<RestaurantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantRecord.fromSnapshot(s));

  static RestaurantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantRecordData({
  String? name,
  double? rate,
  String? img,
  String? category,
  String? description,
  int? restaurantId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'rate': rate,
      'img': img,
      'category': category,
      'description': description,
      'restaurantId': restaurantId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantRecordDocumentEquality implements Equality<RestaurantRecord> {
  const RestaurantRecordDocumentEquality();

  @override
  bool equals(RestaurantRecord? e1, RestaurantRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.rate == e2?.rate &&
        e1?.img == e2?.img &&
        e1?.category == e2?.category &&
        e1?.description == e2?.description &&
        e1?.restaurantId == e2?.restaurantId;
  }

  @override
  int hash(RestaurantRecord? e) => const ListEquality().hash(
      [e?.name, e?.rate, e?.img, e?.category, e?.description, e?.restaurantId]);

  @override
  bool isValidKey(Object? o) => o is RestaurantRecord;
}
