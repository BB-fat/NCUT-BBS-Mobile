///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class GetUserInfoReply_Sex extends $pb.ProtobufEnum {
  static const GetUserInfoReply_Sex MALE = GetUserInfoReply_Sex._(0, 'MALE');
  static const GetUserInfoReply_Sex FEMALE =
      GetUserInfoReply_Sex._(1, 'FEMALE');

  static const $core.List<GetUserInfoReply_Sex> values = <GetUserInfoReply_Sex>[
    MALE,
    FEMALE,
  ];

  static final $core.Map<$core.int, GetUserInfoReply_Sex> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GetUserInfoReply_Sex valueOf($core.int value) => _byValue[value];

  const GetUserInfoReply_Sex._($core.int v, $core.String n) : super(v, n);
}

class GetUserInfoReply_AccountStatus extends $pb.ProtobufEnum {
  static const GetUserInfoReply_AccountStatus UNNAMED =
      GetUserInfoReply_AccountStatus._(0, 'UNNAMED');
  static const GetUserInfoReply_AccountStatus PENDING_REVIEW =
      GetUserInfoReply_AccountStatus._(1, 'PENDING_REVIEW');
  static const GetUserInfoReply_AccountStatus NOT_PASS =
      GetUserInfoReply_AccountStatus._(2, 'NOT_PASS');
  static const GetUserInfoReply_AccountStatus ACTIVE =
      GetUserInfoReply_AccountStatus._(3, 'ACTIVE');
  static const GetUserInfoReply_AccountStatus DISABLED =
      GetUserInfoReply_AccountStatus._(4, 'DISABLED');

  static const $core.List<GetUserInfoReply_AccountStatus> values =
      <GetUserInfoReply_AccountStatus>[
    UNNAMED,
    PENDING_REVIEW,
    NOT_PASS,
    ACTIVE,
    DISABLED,
  ];

  static final $core.Map<$core.int, GetUserInfoReply_AccountStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static GetUserInfoReply_AccountStatus valueOf($core.int value) =>
      _byValue[value];

  const GetUserInfoReply_AccountStatus._($core.int v, $core.String n)
      : super(v, n);
}
