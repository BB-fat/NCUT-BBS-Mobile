///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginRequest',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOS(1, 'accountName')
    ..aOS(2, 'password')
    ..hasRequiredFields = false;

  LoginRequest._() : super();
  factory LoginRequest() => create();
  factory LoginRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  LoginRequest copyWith(void Function(LoginRequest) updates) =>
      super.copyWith((message) => updates(message as LoginRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() =>
      $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginReply',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..aOS(3, 'token')
    ..hasRequiredFields = false;

  LoginReply._() : super();
  factory LoginReply() => create();
  factory LoginReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LoginReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LoginReply clone() => LoginReply()..mergeFromMessage(this);
  LoginReply copyWith(void Function(LoginReply) updates) =>
      super.copyWith((message) => updates(message as LoginReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginReply create() => LoginReply._();
  LoginReply createEmptyInstance() => create();
  static $pb.PbList<LoginReply> createRepeated() => $pb.PbList<LoginReply>();
  @$core.pragma('dart2js:noInline')
  static LoginReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LoginReply>(create);
  static LoginReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class UserInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UserInfo',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aInt64(1, 'id')
    ..aOS(2, 'accountName')
    ..aOS(3, 'realName')
    ..e<Sex>(4, 'sex', $pb.PbFieldType.OE,
        defaultOrMaker: Sex.MALE, valueOf: Sex.valueOf, enumValues: Sex.values)
    ..aOS(5, 'college')
    ..e<AccountStatus>(6, 'accountStatus', $pb.PbFieldType.OE,
        defaultOrMaker: AccountStatus.UNNAMED,
        valueOf: AccountStatus.valueOf,
        enumValues: AccountStatus.values)
    ..a<$core.int>(7, 'grade', $pb.PbFieldType.O3)
    ..aOS(8, 'avatar')
    ..hasRequiredFields = false;

  UserInfo._() : super();
  factory UserInfo() => create();
  factory UserInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  UserInfo copyWith(void Function(UserInfo) updates) =>
      super.copyWith((message) => updates(message as UserInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccountName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get realName => $_getSZ(2);
  @$pb.TagNumber(3)
  set realName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRealName() => $_has(2);
  @$pb.TagNumber(3)
  void clearRealName() => clearField(3);

  @$pb.TagNumber(4)
  Sex get sex => $_getN(3);
  @$pb.TagNumber(4)
  set sex(Sex v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSex() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get college => $_getSZ(4);
  @$pb.TagNumber(5)
  set college($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCollege() => $_has(4);
  @$pb.TagNumber(5)
  void clearCollege() => clearField(5);

  @$pb.TagNumber(6)
  AccountStatus get accountStatus => $_getN(5);
  @$pb.TagNumber(6)
  set accountStatus(AccountStatus v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAccountStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get grade => $_getIZ(6);
  @$pb.TagNumber(7)
  set grade($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasGrade() => $_has(6);
  @$pb.TagNumber(7)
  void clearGrade() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);
}

class GetUserInfoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUserInfoReply',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, 'userInfo',
        protoName: 'userInfo', subBuilder: UserInfo.create)
    ..aOS(2, 'message')
    ..hasRequiredFields = false;

  GetUserInfoReply._() : super();
  factory GetUserInfoReply() => create();
  factory GetUserInfoReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetUserInfoReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetUserInfoReply clone() => GetUserInfoReply()..mergeFromMessage(this);
  GetUserInfoReply copyWith(void Function(GetUserInfoReply) updates) =>
      super.copyWith((message) => updates(message as GetUserInfoReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserInfoReply create() => GetUserInfoReply._();
  GetUserInfoReply createEmptyInstance() => create();
  static $pb.PbList<GetUserInfoReply> createRepeated() =>
      $pb.PbList<GetUserInfoReply>();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserInfoReply>(create);
  static GetUserInfoReply _defaultInstance;

  @$pb.TagNumber(1)
  UserInfo get userInfo => $_getN(0);
  @$pb.TagNumber(1)
  set userInfo(UserInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUserInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserInfo() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureUserInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class CreateAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateAccountRequest',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOS(2, 'accountName')
    ..aOS(3, 'realName')
    ..e<Sex>(4, 'sex', $pb.PbFieldType.OE,
        defaultOrMaker: Sex.MALE, valueOf: Sex.valueOf, enumValues: Sex.values)
    ..aOS(5, 'college')
    ..a<$core.int>(7, 'grade', $pb.PbFieldType.O3)
    ..aOS(8, 'avatar')
    ..aOS(9, 'password')
    ..hasRequiredFields = false;

  CreateAccountRequest._() : super();
  factory CreateAccountRequest() => create();
  factory CreateAccountRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateAccountRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateAccountRequest clone() =>
      CreateAccountRequest()..mergeFromMessage(this);
  CreateAccountRequest copyWith(void Function(CreateAccountRequest) updates) =>
      super.copyWith((message) => updates(message as CreateAccountRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountRequest create() => CreateAccountRequest._();
  CreateAccountRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountRequest> createRepeated() =>
      $pb.PbList<CreateAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAccountRequest>(create);
  static CreateAccountRequest _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(2)
  set accountName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(2)
  void clearAccountName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get realName => $_getSZ(1);
  @$pb.TagNumber(3)
  set realName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRealName() => $_has(1);
  @$pb.TagNumber(3)
  void clearRealName() => clearField(3);

  @$pb.TagNumber(4)
  Sex get sex => $_getN(2);
  @$pb.TagNumber(4)
  set sex(Sex v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(4)
  void clearSex() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get college => $_getSZ(3);
  @$pb.TagNumber(5)
  set college($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCollege() => $_has(3);
  @$pb.TagNumber(5)
  void clearCollege() => clearField(5);

  @$pb.TagNumber(7)
  $core.int get grade => $_getIZ(4);
  @$pb.TagNumber(7)
  set grade($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasGrade() => $_has(4);
  @$pb.TagNumber(7)
  void clearGrade() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(5);
  @$pb.TagNumber(8)
  set avatar($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(5);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get password => $_getSZ(6);
  @$pb.TagNumber(9)
  set password($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPassword() => $_has(6);
  @$pb.TagNumber(9)
  void clearPassword() => clearField(9);
}

class CreateAccountReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateAccountReply',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..aOS(3, 'token')
    ..hasRequiredFields = false;

  CreateAccountReply._() : super();
  factory CreateAccountReply() => create();
  factory CreateAccountReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateAccountReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CreateAccountReply clone() => CreateAccountReply()..mergeFromMessage(this);
  CreateAccountReply copyWith(void Function(CreateAccountReply) updates) =>
      super.copyWith((message) => updates(message as CreateAccountReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountReply create() => CreateAccountReply._();
  CreateAccountReply createEmptyInstance() => create();
  static $pb.PbList<CreateAccountReply> createRepeated() =>
      $pb.PbList<CreateAccountReply>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAccountReply>(create);
  static CreateAccountReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get token => $_getSZ(2);
  @$pb.TagNumber(3)
  set token($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearToken() => clearField(3);
}

class SubmitVerifyInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitVerifyInfoRequest',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOS(1, 'image')
    ..aOS(2, 'remark')
    ..hasRequiredFields = false;

  SubmitVerifyInfoRequest._() : super();
  factory SubmitVerifyInfoRequest() => create();
  factory SubmitVerifyInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitVerifyInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SubmitVerifyInfoRequest clone() =>
      SubmitVerifyInfoRequest()..mergeFromMessage(this);
  SubmitVerifyInfoRequest copyWith(
          void Function(SubmitVerifyInfoRequest) updates) =>
      super.copyWith((message) => updates(message as SubmitVerifyInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitVerifyInfoRequest create() => SubmitVerifyInfoRequest._();
  SubmitVerifyInfoRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitVerifyInfoRequest> createRepeated() =>
      $pb.PbList<SubmitVerifyInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static SubmitVerifyInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitVerifyInfoRequest>(create);
  static SubmitVerifyInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get image => $_getSZ(0);
  @$pb.TagNumber(1)
  set image($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remark => $_getSZ(1);
  @$pb.TagNumber(2)
  set remark($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRemark() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemark() => clearField(2);
}

class SubmitVerifyInfoReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitVerifyInfoReply',
      package: const $pb.PackageName('account'), createEmptyInstance: create)
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false;

  SubmitVerifyInfoReply._() : super();
  factory SubmitVerifyInfoReply() => create();
  factory SubmitVerifyInfoReply.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubmitVerifyInfoReply.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SubmitVerifyInfoReply clone() =>
      SubmitVerifyInfoReply()..mergeFromMessage(this);
  SubmitVerifyInfoReply copyWith(
          void Function(SubmitVerifyInfoReply) updates) =>
      super.copyWith((message) => updates(message as SubmitVerifyInfoReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitVerifyInfoReply create() => SubmitVerifyInfoReply._();
  SubmitVerifyInfoReply createEmptyInstance() => create();
  static $pb.PbList<SubmitVerifyInfoReply> createRepeated() =>
      $pb.PbList<SubmitVerifyInfoReply>();
  @$core.pragma('dart2js:noInline')
  static SubmitVerifyInfoReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubmitVerifyInfoReply>(create);
  static SubmitVerifyInfoReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}
