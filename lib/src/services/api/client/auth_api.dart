import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '/src/core/model/user.dart';
import '../request/login_request.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthAPI {
  factory AuthAPI(Dio dio, {String baseUrl}) = _AuthAPI;

  @POST('/q')
  Future<User> login({
    @Body() required LoginRequest request,
  });
}
