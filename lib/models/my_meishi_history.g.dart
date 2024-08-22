// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_meishi_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMyMeishiHistoryCollection on Isar {
  IsarCollection<MyMeishiHistory> get myMeishiHistorys => this.collection();
}

const MyMeishiHistorySchema = CollectionSchema(
  name: r'MyMeishiHistory',
  id: -8525727991496605020,
  properties: {
    r'imageName': PropertySchema(
      id: 0,
      name: r'imageName',
      type: IsarType.string,
    ),
    r'meishiId': PropertySchema(
      id: 1,
      name: r'meishiId',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 2,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'version': PropertySchema(
      id: 3,
      name: r'version',
      type: IsarType.long,
    )
  },
  estimateSize: _myMeishiHistoryEstimateSize,
  serialize: _myMeishiHistorySerialize,
  deserialize: _myMeishiHistoryDeserialize,
  deserializeProp: _myMeishiHistoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _myMeishiHistoryGetId,
  getLinks: _myMeishiHistoryGetLinks,
  attach: _myMeishiHistoryAttach,
  version: '3.1.0+1',
);

int _myMeishiHistoryEstimateSize(
  MyMeishiHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imageName.length * 3;
  return bytesCount;
}

void _myMeishiHistorySerialize(
  MyMeishiHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.imageName);
  writer.writeLong(offsets[1], object.meishiId);
  writer.writeDateTime(offsets[2], object.updatedAt);
  writer.writeLong(offsets[3], object.version);
}

MyMeishiHistory _myMeishiHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MyMeishiHistory();
  object.id = id;
  object.imageName = reader.readString(offsets[0]);
  object.updatedAt = reader.readDateTime(offsets[2]);
  object.version = reader.readLong(offsets[3]);
  return object;
}

P _myMeishiHistoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _myMeishiHistoryGetId(MyMeishiHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _myMeishiHistoryGetLinks(MyMeishiHistory object) {
  return [];
}

void _myMeishiHistoryAttach(
    IsarCollection<dynamic> col, Id id, MyMeishiHistory object) {
  object.id = id;
}

extension MyMeishiHistoryQueryWhereSort
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QWhere> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MyMeishiHistoryQueryWhere
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QWhereClause> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MyMeishiHistoryQueryFilter
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QFilterCondition> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      imageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      meishiIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meishiId',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      meishiIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meishiId',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      meishiIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meishiId',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      meishiIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meishiId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      versionEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      versionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      versionLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterFilterCondition>
      versionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MyMeishiHistoryQueryObject
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QFilterCondition> {}

extension MyMeishiHistoryQueryLinks
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QFilterCondition> {}

extension MyMeishiHistoryQuerySortBy
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QSortBy> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByMeishiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByMeishiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension MyMeishiHistoryQuerySortThenBy
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QSortThenBy> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByMeishiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByMeishiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QAfterSortBy>
      thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension MyMeishiHistoryQueryWhereDistinct
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QDistinct> {
  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QDistinct> distinctByImageName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QDistinct>
      distinctByMeishiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meishiId');
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<MyMeishiHistory, MyMeishiHistory, QDistinct>
      distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension MyMeishiHistoryQueryProperty
    on QueryBuilder<MyMeishiHistory, MyMeishiHistory, QQueryProperty> {
  QueryBuilder<MyMeishiHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MyMeishiHistory, String, QQueryOperations> imageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageName');
    });
  }

  QueryBuilder<MyMeishiHistory, int, QQueryOperations> meishiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meishiId');
    });
  }

  QueryBuilder<MyMeishiHistory, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<MyMeishiHistory, int, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
