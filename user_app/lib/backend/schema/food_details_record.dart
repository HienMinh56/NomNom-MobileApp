import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodDetailsRecord extends FirestoreRecord {
  FoodDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "fee" field.
  double? _fee;
  double get fee => _fee ?? 0.0;
  bool hasFee() => _fee != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "options" field.
  List<String>? _options;
  List<String> get options => _options ?? const [];
  bool hasOptions() => _options != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _fee = castToType<double>(snapshotData['fee']);
    _img = snapshotData['img'] as String?;
    _options = getDataList(snapshotData['options']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foodDetails');

  static Stream<FoodDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodDetailsRecord.fromSnapshot(s));

  static Future<FoodDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodDetailsRecord.fromSnapshot(s));

  static FoodDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodDetailsRecordData({
  String? name,
  String? description,
  double? fee,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'fee': fee,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodDetailsRecordDocumentEquality implements Equality<FoodDetailsRecord> {
  const FoodDetailsRecordDocumentEquality();

  @override
  bool equals(FoodDetailsRecord? e1, FoodDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.fee == e2?.fee &&
        e1?.img == e2?.img &&
        listEquality.equals(e1?.options, e2?.options);
  }

  @override
  int hash(FoodDetailsRecord? e) => const ListEquality()
      .hash([e?.name, e?.description, e?.fee, e?.img, e?.options]);

  @override
  bool isValidKey(Object? o) => o is FoodDetailsRecord;
}
