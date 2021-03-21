import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/proto/account/account.pb.dart';

const _baseCGI = "account";

class GetUserInfoApi extends ApiGet<GetUserInfoReply> {
  GetUserInfoApi() : super(GetUserInfoReply());
  @override
  String get cgiName => "$_baseCGI/user-info";
}
