///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AccountStatus$json = const {
  '1': 'AccountStatus',
  '2': const [
    const {'1': 'UNNAMED', '2': 0},
    const {'1': 'PENDING_REVIEW', '2': 1},
    const {'1': 'NOT_PASS', '2': 2},
    const {'1': 'ACTIVE', '2': 3},
    const {'1': 'DISABLED', '2': 4},
  ],
};

const Sex$json = const {
  '1': 'Sex',
  '2': const [
    const {'1': 'MALE', '2': 0},
    const {'1': 'FEMALE', '2': 1},
  ],
};

const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'account_name', '3': 1, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const LoginReply$json = const {
  '1': 'LoginReply',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const UserInfo$json = const {
  '1': 'UserInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'account_name', '3': 2, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'real_name', '3': 3, '4': 1, '5': 9, '10': 'realName'},
    const {
      '1': 'sex',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.account.Sex',
      '10': 'sex'
    },
    const {'1': 'college', '3': 5, '4': 1, '5': 9, '10': 'college'},
    const {
      '1': 'account_status',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.account.AccountStatus',
      '10': 'accountStatus'
    },
    const {'1': 'grade', '3': 7, '4': 1, '5': 5, '10': 'grade'},
    const {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

const GetUserInfoReply$json = const {
  '1': 'GetUserInfoReply',
  '2': const [
    const {
      '1': 'userInfo',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.account.UserInfo',
      '10': 'userInfo'
    },
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const CreateAccountRequest$json = const {
  '1': 'CreateAccountRequest',
  '2': const [
    const {'1': 'account_name', '3': 2, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'password', '3': 9, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'real_name', '3': 3, '4': 1, '5': 9, '10': 'realName'},
    const {
      '1': 'sex',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.account.Sex',
      '10': 'sex'
    },
    const {'1': 'college', '3': 5, '4': 1, '5': 9, '10': 'college'},
    const {'1': 'grade', '3': 7, '4': 1, '5': 5, '10': 'grade'},
    const {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
  ],
};

const CreateAccountReply$json = const {
  '1': 'CreateAccountReply',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

const SubmitVerifyInfoRequest$json = const {
  '1': 'SubmitVerifyInfoRequest',
  '2': const [
    const {'1': 'image', '3': 1, '4': 1, '5': 9, '10': 'image'},
    const {'1': 'remark', '3': 2, '4': 1, '5': 9, '10': 'remark'},
  ],
};

const SubmitVerifyInfoReply$json = const {
  '1': 'SubmitVerifyInfoReply',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};
