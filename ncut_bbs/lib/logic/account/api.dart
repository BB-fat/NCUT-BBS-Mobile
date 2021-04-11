import 'package:ncut_bbs/logic/api/common.dart';
import 'package:ncut_bbs/logic/api/manager.dart';
import 'package:ncut_bbs/proto/account/account.pb.dart';
import 'package:http/http.dart';

const _baseCGI = "account";

class GetUserInfoApi extends ApiGet<GetUserInfoReply> {
  GetUserInfoApi() : super(GetUserInfoReply());

  @override
  String get cgiName => "$_baseCGI/user-info";

  @override
  Future<Response> doRequest() {
    if (ApiManager.instance.token == null) {
      return null;
    } else {
      return super.doRequest();
    }
  }
}

class LoginByPasswordApi extends ApiPost<LoginReply> {
  LoginByPasswordApi(LoginRequest request) : super(request, LoginReply());

  @override
  String get cgiName => "$_baseCGI/login";
}

class CreateAccountApi extends ApiPost<CreateAccountReply> {
  CreateAccountApi(CreateAccountRequest request)
      : super(request, CreateAccountReply());

  @override
  String get cgiName => "$_baseCGI/create";
}

class SubmitVerifyApi extends ApiPost<SubmitVerifyInfoReply> {
  SubmitVerifyApi(SubmitVerifyInfoRequest request)
      : super(request, SubmitVerifyInfoReply());

  @override
  String get cgiName => "$_baseCGI/verify";
}
