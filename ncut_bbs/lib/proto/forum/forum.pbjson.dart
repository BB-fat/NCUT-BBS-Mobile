///
//  Generated code. Do not modify.
//  source: forum.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PostData$json = const {
  '1': 'PostData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'author_id', '3': 2, '4': 1, '5': 5, '10': 'authorId'},
    const {'1': 'create_time', '3': 3, '4': 1, '5': 3, '10': 'createTime'},
    const {'1': 'update_time', '3': 4, '4': 1, '5': 3, '10': 'updateTime'},
    const {'1': 'title', '3': 5, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'views', '3': 6, '4': 1, '5': 5, '10': 'views'},
    const {'1': 'likes', '3': 7, '4': 1, '5': 5, '10': 'likes'},
    const {'1': 'is_like', '3': 11, '4': 1, '5': 8, '10': 'isLike'},
    const {'1': 'content', '3': 8, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'pictures', '3': 10, '4': 3, '5': 9, '10': 'pictures'},
  ],
};

const CreatePostRequest$json = const {
  '1': 'CreatePostRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'pictures', '3': 3, '4': 1, '5': 9, '10': 'pictures'},
  ],
};

const CreatePostReply$json = const {
  '1': 'CreatePostReply',
  '2': const [
    const {
      '1': 'post_data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.forum.PostData',
      '10': 'postData'
    },
  ],
};

const GetPostListReply$json = const {
  '1': 'GetPostListReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.forum.PostData',
      '10': 'data'
    },
  ],
};

const LikePostRequest$json = const {
  '1': 'LikePostRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const UnLikePostRequest$json = const {
  '1': 'UnLikePostRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const GetOnePostReply$json = const {
  '1': 'GetOnePostReply',
  '2': const [
    const {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.forum.PostData',
      '10': 'data'
    },
  ],
};

const AddPostViewsRequest$json = const {
  '1': 'AddPostViewsRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};
