import 'package:sofax_assessment/src/core/model/user.dart';
import 'package:sofax_assessment/src/core/repository/i_auth_repository.dart';
import 'package:sofax_assessment/src/services/api/client/auth_api.dart';
import 'package:sofax_assessment/src/services/api/request/login_request.dart';

class AuthRepository implements IAuthRepository {
  AuthAPI authAPI;
  AuthRepository({required this.authAPI});
  @override
  Future<User> login(LoginRequest request) async {
    return await authAPI.login(request: request);
  }
}
