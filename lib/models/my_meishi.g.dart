// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_meishi.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMyMeishiCollection on Isar {
  IsarCollection<MyMeishi> get myMeishis => this.collection();
}

const MyMeishiSchema = CollectionSchema(
  name: r'MyMeishi',
  id: 4930483010203323772,
  properties: {
    r'meishiId': PropertySchema(
      id: 0,
      name: r'meishiId',
      type: IsarType.string,
    )
  },
  estimateSize: _myMeishiEstimateSize,
  serialize: _myMeishiSerialize,
  deserialize: _myMeishiDeserialize,
  deserializeProp: _myMeishiDeserializeProp,
  idName: r'id',
  indexes: {
    r'meishiId': IndexSchema(
      id: -3138573199007313671,
      name: r'meishiId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'meishiId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _myMeishiGetId,
  getLinks: _myMeishiGetLinks,
  attach: _myMeishiAttach,
  version: '3.1.0+1',
);

int _myMeishiEstimateSize(
  MyMeishi object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.meishiId.length * 3;
  return bytesCount;
}

void _myMeishiSerialize(
  MyMeishi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.meishiId);
}

MyMeishi _myMeishiDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MyMeishi();
  object.id = id;
  object.meishiId = reader.readString(offsets[0]);
  return object;
}

P _myMeishiDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _myMeishiGetId(MyMeishi object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _myMeishiGetLinks(MyMeishi object) {
  return [];
}

void _myMeishiAttach(IsarCollection<dynamic> col, Id id, MyMeishi object) {
  object.id = id;
}

extension MyMeishiByIndex on IsarCollection<MyMeishi> {
  Future<MyMeishi?> getByMeishiId(String meishiId) {
    return getByIndex(r'meishiId', [meishiId]);
  }

  MyMeishi? getByMeishiIdSync(String meishiId) {
    return getByIndexSync(r'meishiId', [meishiId]);
  }

  Future<bool> deleteByMeishiId(String meishiId) {
    return deleteByIndex(r'meishiId', [meishiId]);
  }

  bool deleteByMeishiIdSync(String meishiId) {
    return deleteByIndexSync(r'meishiId', [meishiId]);
  }

  Future<List<MyMeishi?>> getAllByMeishiId(List<String> meishiIdValues) {
    final values = meishiIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'meishiId', values);
  }

  List<MyMeishi?> getAllByMeishiIdSync(List<String> meishiIdValues) {
    final values = meishiIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'meishiId', values);
  }

  Future<int> deleteAllByMeishiId(List<String> meishiIdValues) {
    final values = meishiIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'meishiId', values);
  }

  int deleteAllByMeishiIdSync(List<String> meishiIdValues) {
    final values = meishiIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'meishiId', values);
  }

  Future<Id> putByMeishiId(MyMeishi object) {
    return putByIndex(r'meishiId', object);
  }

  Id putByMeishiIdSync(MyMeishi object, {bool saveLinks = true}) {
    return putByIndexSync(r'meishiId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMeishiId(List<MyMeishi> objects) {
    return putAllByIndex(r'meishiId', objects);
  }

  List<Id> putAllByMeishiIdSync(List<MyMeishi> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'meishiId', objects, saveLinks: saveLinks);
  }
}

extension MyMeishiQueryWhereSort on QueryBuilder<MyMeishi, MyMeishi, QWhere> {
  QueryBuilder<MyMeishi, MyMeishi, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MyMeishiQueryWhere on QueryBuilder<MyMeishi, MyMeishi, QWhereClause> {
  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> idBetween(
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

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> meishiIdEqualTo(
      String meishiId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'meishiId',
        value: [meishiId],
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterWhereClause> meishiIdNotEqualTo(
      String meishiId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'meishiId',
              lower: [],
              upper: [meishiId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'meishiId',
              lower: [meishiId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'meishiId',
              lower: [meishiId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'meishiId',
              lower: [],
              upper: [meishiId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MyMeishiQueryFilter
    on QueryBuilder<MyMeishi, MyMeishi, QFilterCondition> {
  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> idBetween(
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

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'meishiId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'meishiId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'meishiId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'meishiId',
        value: '',
      ));
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterFilterCondition> meishiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'meishiId',
        value: '',
      ));
    });
  }
}

extension MyMeishiQueryObject
    on QueryBuilder<MyMeishi, MyMeishi, QFilterCondition> {}

extension MyMeishiQueryLinks
    on QueryBuilder<MyMeishi, MyMeishi, QFilterCondition> {}

extension MyMeishiQuerySortBy on QueryBuilder<MyMeishi, MyMeishi, QSortBy> {
  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> sortByMeishiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.asc);
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> sortByMeishiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.desc);
    });
  }
}

extension MyMeishiQuerySortThenBy
    on QueryBuilder<MyMeishi, MyMeishi, QSortThenBy> {
  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> thenByMeishiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.asc);
    });
  }

  QueryBuilder<MyMeishi, MyMeishi, QAfterSortBy> thenByMeishiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'meishiId', Sort.desc);
    });
  }
}

extension MyMeishiQueryWhereDistinct
    on QueryBuilder<MyMeishi, MyMeishi, QDistinct> {
  QueryBuilder<MyMeishi, MyMeishi, QDistinct> distinctByMeishiId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'meishiId', caseSensitive: caseSensitive);
    });
  }
}

extension MyMeishiQueryProperty
    on QueryBuilder<MyMeishi, MyMeishi, QQueryProperty> {
  QueryBuilder<MyMeishi, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MyMeishi, String, QQueryOperations> meishiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meishiId');
    });
  }
}
