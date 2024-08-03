// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_meishi.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOtherMeishiCollection on Isar {
  IsarCollection<OtherMeishi> get otherMeishis => this.collection();
}

const OtherMeishiSchema = CollectionSchema(
  name: r'OtherMeishi',
  id: -1612449590603980131,
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
  estimateSize: _otherMeishiEstimateSize,
  serialize: _otherMeishiSerialize,
  deserialize: _otherMeishiDeserialize,
  deserializeProp: _otherMeishiDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _otherMeishiGetId,
  getLinks: _otherMeishiGetLinks,
  attach: _otherMeishiAttach,
  version: '3.1.0+1',
);

int _otherMeishiEstimateSize(
  OtherMeishi object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imagePath.length * 3;
  return bytesCount;
}

void _otherMeishiSerialize(
  OtherMeishi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.addedTime);
  writer.writeString(offsets[1], object.imagePath);
}

OtherMeishi _otherMeishiDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OtherMeishi();
  object.addedTime = reader.readDateTime(offsets[0]);
  object.id = id;
  object.imagePath = reader.readString(offsets[1]);
  return object;
}

P _otherMeishiDeserializeProp<P>(
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

Id _otherMeishiGetId(OtherMeishi object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _otherMeishiGetLinks(OtherMeishi object) {
  return [];
}

void _otherMeishiAttach(
    IsarCollection<dynamic> col, Id id, OtherMeishi object) {
  object.id = id;
}

extension OtherMeishiQueryWhereSort
    on QueryBuilder<OtherMeishi, OtherMeishi, QWhere> {
  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OtherMeishiQueryWhere
    on QueryBuilder<OtherMeishi, OtherMeishi, QWhereClause> {
  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterWhereClause> idBetween(
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

extension OtherMeishiQueryFilter
    on QueryBuilder<OtherMeishi, OtherMeishi, QFilterCondition> {
  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      addedTimeEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      addedTimeGreaterThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      addedTimeLessThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      addedTimeBetween(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition> idBetween(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathEqualTo(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathGreaterThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathLessThan(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathBetween(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathStartsWith(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathEndsWith(
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

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterFilterCondition>
      imagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imagePath',
        value: '',
      ));
    });
  }
}

extension OtherMeishiQueryObject
    on QueryBuilder<OtherMeishi, OtherMeishi, QFilterCondition> {}

extension OtherMeishiQueryLinks
    on QueryBuilder<OtherMeishi, OtherMeishi, QFilterCondition> {}

extension OtherMeishiQuerySortBy
    on QueryBuilder<OtherMeishi, OtherMeishi, QSortBy> {
  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> sortByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.asc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> sortByAddedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.desc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> sortByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> sortByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }
}

extension OtherMeishiQuerySortThenBy
    on QueryBuilder<OtherMeishi, OtherMeishi, QSortThenBy> {
  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.asc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenByAddedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTime', Sort.desc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenByImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.asc);
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QAfterSortBy> thenByImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imagePath', Sort.desc);
    });
  }
}

extension OtherMeishiQueryWhereDistinct
    on QueryBuilder<OtherMeishi, OtherMeishi, QDistinct> {
  QueryBuilder<OtherMeishi, OtherMeishi, QDistinct> distinctByAddedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedTime');
    });
  }

  QueryBuilder<OtherMeishi, OtherMeishi, QDistinct> distinctByImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imagePath', caseSensitive: caseSensitive);
    });
  }
}

extension OtherMeishiQueryProperty
    on QueryBuilder<OtherMeishi, OtherMeishi, QQueryProperty> {
  QueryBuilder<OtherMeishi, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OtherMeishi, DateTime, QQueryOperations> addedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedTime');
    });
  }

  QueryBuilder<OtherMeishi, String, QQueryOperations> imagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imagePath');
    });
  }
}
