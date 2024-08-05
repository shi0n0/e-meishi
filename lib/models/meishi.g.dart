// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meishi.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeishiCollection on Isar {
  IsarCollection<Meishi> get meishis => this.collection();
}

const MeishiSchema = CollectionSchema(
  name: r'Meishi',
  id: -6852813502836494271,
  properties: {
    r'addedTime': PropertySchema(
      id: 0,
      name: r'addedTime',
      type: IsarType.dateTime,
    ),
    r'imagePath': PropertySchema(
      id: 1,
      name: r'imagePath',
      type: IsarType.string,
    )
  },
  estimateSize: _meishiEstimateSize,
  serialize: _meishiSerialize,
  deserialize: _meishiDeserialize,
  deserializeProp: _meishiDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _meishiGetId,
  getLinks: _meishiGetLinks,
  attach: _meishiAttach,
  version: '3.1.0+1',
);

int _meishiEstimateSize(
  Meishi object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imagePath.length * 3;
  return bytesCount;
}

void _meishiSerialize(
  Meishi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.addedTime);
  writer.writeString(offsets[1], object.imagePath);
}

Meishi _meishiDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meishi();
  object.addedTime = reader.readDateTime(offsets[0]);
  object.id = id;
  object.imagePath = reader.readString(offsets[1]);
  return object;
}

P _meishiDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _meishiGetId(Meishi object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _meishiGetLinks(Meishi object) {
  return [];
}

void _meishiAttach(IsarCollection<dynamic> col, Id id, Meishi object) {
  object.id = id;
}

extension MeishiQueryWhereSort on QueryBuilder<Meishi, Meishi, QWhere> {
  QueryBuilder<Meishi, Meishi, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeishiQueryWhere on QueryBuilder<Meishi, Meishi, QWhereClause> {
  QueryBuilder<Meishi, Meishi, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Meishi, Meishi, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterWhereClause> idBetween(
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

extension MeishiQueryFilter on QueryBuilder<Meishi, Meishi, QFilterCondition> {
  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> addedTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> addedTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> addedTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> addedTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterFilterCondition> imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }
}

extension MeishiQueryObject on QueryBuilder<Meishi, Meishi, QFilterCondition> {}

extension MeishiQueryLinks on QueryBuilder<Meishi, Meishi, QFilterCondition> {}

extension MeishiQuerySortBy on QueryBuilder<Meishi, Meishi, QSortBy> {
  QueryBuilder<Meishi, Meishi, QAfterSortBy> sortByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.asc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> sortByAddedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.desc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }
}

extension MeishiQuerySortThenBy on QueryBuilder<Meishi, Meishi, QSortThenBy> {
  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.asc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenByAddedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.desc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<Meishi, Meishi, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }
}

extension MeishiQueryWhereDistinct on QueryBuilder<Meishi, Meishi, QDistinct> {
  QueryBuilder<Meishi, Meishi, QDistinct> distinctByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedTime');
    });
  }

  QueryBuilder<Meishi, Meishi, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }
}

extension MeishiQueryProperty on QueryBuilder<Meishi, Meishi, QQueryProperty> {
  QueryBuilder<Meishi, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Meishi, DateTime, QQueryOperations> addedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedTime');
    });
  }

  QueryBuilder<Meishi, String, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }
}
