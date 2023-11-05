// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_image_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRandomImageModelCollection on Isar {
  IsarCollection<RandomImageModel> get randomImageModels => this.collection();
}

const RandomImageModelSchema = CollectionSchema(
  name: r'RandomImageModel',
  id: -2733462983118133205,
  properties: {
    r'addedTocart': PropertySchema(
      id: 0,
      name: r'addedTocart',
      type: IsarType.bool,
    ),
    r'message': PropertySchema(
      id: 1,
      name: r'message',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 2,
      name: r'price',
      type: IsarType.long,
    ),
    r'status': PropertySchema(
      id: 3,
      name: r'status',
      type: IsarType.string,
    )
  },
  estimateSize: _randomImageModelEstimateSize,
  serialize: _randomImageModelSerialize,
  deserialize: _randomImageModelDeserialize,
  deserializeProp: _randomImageModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'message': IndexSchema(
      id: 800701444045231354,
      name: r'message',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'message',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'addedTocart': IndexSchema(
      id: 4087619388188773780,
      name: r'addedTocart',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'addedTocart',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _randomImageModelGetId,
  getLinks: _randomImageModelGetLinks,
  attach: _randomImageModelAttach,
  version: '3.1.0+1',
);

int _randomImageModelEstimateSize(
  RandomImageModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.message;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _randomImageModelSerialize(
  RandomImageModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.addedTocart);
  writer.writeString(offsets[1], object.message);
  writer.writeLong(offsets[2], object.price);
  writer.writeString(offsets[3], object.status);
}

RandomImageModel _randomImageModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RandomImageModel(
    addedTocart: reader.readBoolOrNull(offsets[0]),
    message: reader.readStringOrNull(offsets[1]),
    status: reader.readStringOrNull(offsets[3]),
  );
  object.id = id;
  object.price = reader.readLongOrNull(offsets[2]);
  return object;
}

P _randomImageModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _randomImageModelGetId(RandomImageModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _randomImageModelGetLinks(RandomImageModel object) {
  return [];
}

void _randomImageModelAttach(
    IsarCollection<dynamic> col, Id id, RandomImageModel object) {
  object.id = id;
}

extension RandomImageModelByIndex on IsarCollection<RandomImageModel> {
  Future<RandomImageModel?> getByMessage(String? message) {
    return getByIndex(r'message', [message]);
  }

  RandomImageModel? getByMessageSync(String? message) {
    return getByIndexSync(r'message', [message]);
  }

  Future<bool> deleteByMessage(String? message) {
    return deleteByIndex(r'message', [message]);
  }

  bool deleteByMessageSync(String? message) {
    return deleteByIndexSync(r'message', [message]);
  }

  Future<List<RandomImageModel?>> getAllByMessage(List<String?> messageValues) {
    final values = messageValues.map((e) => [e]).toList();
    return getAllByIndex(r'message', values);
  }

  List<RandomImageModel?> getAllByMessageSync(List<String?> messageValues) {
    final values = messageValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'message', values);
  }

  Future<int> deleteAllByMessage(List<String?> messageValues) {
    final values = messageValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'message', values);
  }

  int deleteAllByMessageSync(List<String?> messageValues) {
    final values = messageValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'message', values);
  }

  Future<Id> putByMessage(RandomImageModel object) {
    return putByIndex(r'message', object);
  }

  Id putByMessageSync(RandomImageModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'message', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMessage(List<RandomImageModel> objects) {
    return putAllByIndex(r'message', objects);
  }

  List<Id> putAllByMessageSync(List<RandomImageModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'message', objects, saveLinks: saveLinks);
  }
}

extension RandomImageModelQueryWhereSort
    on QueryBuilder<RandomImageModel, RandomImageModel, QWhere> {
  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhere>
      anyAddedTocart() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'addedTocart'),
      );
    });
  }
}

extension RandomImageModelQueryWhere
    on QueryBuilder<RandomImageModel, RandomImageModel, QWhereClause> {
  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
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

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      messageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'message',
        value: [null],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      messageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'message',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      messageEqualTo(String? message) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'message',
        value: [message],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      messageNotEqualTo(String? message) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'message',
              lower: [],
              upper: [message],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'message',
              lower: [message],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'message',
              lower: [message],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'message',
              lower: [],
              upper: [message],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      addedTocartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'addedTocart',
        value: [null],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      addedTocartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'addedTocart',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      addedTocartEqualTo(bool? addedTocart) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'addedTocart',
        value: [addedTocart],
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterWhereClause>
      addedTocartNotEqualTo(bool? addedTocart) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'addedTocart',
              lower: [],
              upper: [addedTocart],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'addedTocart',
              lower: [addedTocart],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'addedTocart',
              lower: [addedTocart],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'addedTocart',
              lower: [],
              upper: [addedTocart],
              includeUpper: false,
            ));
      }
    });
  }
}

extension RandomImageModelQueryFilter
    on QueryBuilder<RandomImageModel, RandomImageModel, QFilterCondition> {
  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      addedTocartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'addedTocart',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      addedTocartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'addedTocart',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      addedTocartEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedTocart',
        value: value,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
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

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
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

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
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

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'price',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      priceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }
}

extension RandomImageModelQueryObject
    on QueryBuilder<RandomImageModel, RandomImageModel, QFilterCondition> {}

extension RandomImageModelQueryLinks
    on QueryBuilder<RandomImageModel, RandomImageModel, QFilterCondition> {}

extension RandomImageModelQuerySortBy
    on QueryBuilder<RandomImageModel, RandomImageModel, QSortBy> {
  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByAddedTocart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTocart', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByAddedTocartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTocart', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension RandomImageModelQuerySortThenBy
    on QueryBuilder<RandomImageModel, RandomImageModel, QSortThenBy> {
  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByAddedTocart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTocart', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByAddedTocartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedTocart', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QAfterSortBy>
      thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }
}

extension RandomImageModelQueryWhereDistinct
    on QueryBuilder<RandomImageModel, RandomImageModel, QDistinct> {
  QueryBuilder<RandomImageModel, RandomImageModel, QDistinct>
      distinctByAddedTocart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedTocart');
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QDistinct> distinctByMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<RandomImageModel, RandomImageModel, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }
}

extension RandomImageModelQueryProperty
    on QueryBuilder<RandomImageModel, RandomImageModel, QQueryProperty> {
  QueryBuilder<RandomImageModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RandomImageModel, bool?, QQueryOperations>
      addedTocartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedTocart');
    });
  }

  QueryBuilder<RandomImageModel, String?, QQueryOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<RandomImageModel, int?, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<RandomImageModel, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }
}
