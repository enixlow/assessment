import '../../services/api/request/login_request.dart';
import '../model/user.dart';

abstract class IAuthRepository {
  Future<User> login(LoginRequest request);
}