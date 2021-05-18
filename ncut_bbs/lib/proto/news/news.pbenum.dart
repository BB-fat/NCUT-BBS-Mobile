///
//  Generated code. Do not modify.
//  source: news.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class NewsType extends $pb.ProtobufEnum {
  static const NewsType SYSTEM = NewsType._(0, 'SYSTEM');
  static const NewsType FORUM = NewsType._(1, 'FORUM');
  static const NewsType QA = NewsType._(2, 'QA');

  static const $core.List<NewsType> values = <NewsType>[
    SYSTEM,
    FORUM,
    QA,
  ];

  static final $core.Map<$core.int, NewsType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static NewsType valueOf($core.int value) => _byValue[value];

  const NewsType._($core.int v, $core.String n) : super(v, n);
}
