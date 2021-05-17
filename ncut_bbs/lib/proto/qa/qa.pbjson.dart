///
//  Generated code. Do not modify.
//  source: qa.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const QuestionData$json = const {
  '1': 'QuestionData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'author_id', '3': 2, '4': 1, '5': 5, '10': 'authorId'},
    const {'1': 'create_time', '3': 3, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'views', '3': 6, '4': 1, '5': 5, '10': 'views'},
    const {'1': 'content', '3': 8, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'pictures', '3': 10, '4': 3, '5': 9, '10': 'pictures'},
  ],
};

const CreateQuestionRequest$json = const {
  '1': 'CreateQuestionRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'pictures', '3': 3, '4': 1, '5': 9, '10': 'pictures'},
  ],
};

const CreateQuestionReply$json = const {
  '1': 'CreateQuestionReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.qa.QuestionData',
      '10': 'data'
    },
  ],
};

const GetQuestionListReply$json = const {
  '1': 'GetQuestionListReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.qa.QuestionData',
      '10': 'data'
    },
  ],
};

const AddQuestionViewsRequest$json = const {
  '1': 'AddQuestionViewsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const LikeAnswerRequest$json = const {
  '1': 'LikeAnswerRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const UnLikeAnswerRequest$json = const {
  '1': 'UnLikeAnswerRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const AnswerData$json = const {
  '1': 'AnswerData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {
      '1': 'author',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.account.UserInfo',
      '10': 'author'
    },
    const {'1': 'question_id', '3': 3, '4': 1, '5': 5, '10': 'questionId'},
    const {'1': 'create_time', '3': 4, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'likes', '3': 6, '4': 1, '5': 5, '10': 'likes'},
    const {'1': 'is_like', '3': 7, '4': 1, '5': 8, '10': 'isLike'},
  ],
};

const GetAnswerReply$json = const {
  '1': 'GetAnswerReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.qa.AnswerData',
      '10': 'data'
    },
  ],
};

const CreateAnswerRequest$json = const {
  '1': 'CreateAnswerRequest',
  '2': const [
    const {'1': 'question_id', '3': 1, '4': 1, '5': 5, '10': 'questionId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};
