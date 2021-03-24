///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccountStatus extends $pb.ProtobufEnum {
  static const AccountStatus UNNAMED = AccountStatus._(0, 'UNNAMED');
  static const AccountStatus PENDING_REVIEW =
      AccountStatus._(1, 'PENDING_REVIEW');
  static const AccountStatus NOT_PASS = AccountStatus._(2, 'NOT_PASS');
  static const AccountStatus ACTIVE = AccountStatus._(3, 'ACTIVE');
  static const AccountStatus DISABLED = AccountStatus._(4, 'DISABLED');

  static const $core.List<AccountStatus> values = <AccountStatus>[
    UNNAMED,
    PENDING_REVIEW,
    NOT_PASS,
    ACTIVE,
    DISABLED,
  ];

  static final $core.Map<$core.int, AccountStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AccountStatus valueOf($core.int value) => _byValue[value];

  const AccountStatus._($core.int v, $core.String n) : super(v, n);
}

class Sex extends $pb.ProtobufEnum {
  static const Sex MALE = Sex._(0, 'MALE');
  static const Sex FEMALE = Sex._(1, 'FEMALE');

  static const $core.List<Sex> values = <Sex>[
    MALE,
    FEMALE,
  ];

  static final $core.Map<$core.int, Sex> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Sex valueOf($core.int value) => _byValue[value];

  const Sex._($core.int v, $core.String n) : super(v, n);
}
