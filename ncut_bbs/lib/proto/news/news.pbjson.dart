///
//  Generated code. Do not modify.
//  source: news.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const NewsType$json = const {
  '1': 'NewsType',
  '2': const [
    const {'1': 'SYSTEM', '2': 0},
    const {'1': 'FORUM', '2': 1},
    const {'1': 'QA', '2': 2},
  ],
};

const NewsData$json = const {
  '1': 'NewsData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'create_time', '3': 3, '4': 1, '5': 3, '10': 'createTime'},
    const {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.news.NewsType',
      '10': 'type'
    },
    const {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'data', '3': 7, '4': 1, '5': 9, '10': 'data'},
  ],
};

const GetNewsReply$json = const {
  '1': 'GetNewsReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.news.NewsData',
      '10': 'data'
    },
  ],
};
