import 'package:calkitna_mobile_app/core/models/app_user.dart';
import 'package:calkitna_mobile_app/core/services/auth_service.dart';
import 'package:calkitna_mobile_app/core/services/database_service.dart';
import 'package:calkitna_mobile_app/core/view_models.dart/base_view_model.dart';
import '../../../../locator.dart';

class SignupViewModel extends BaseViewModel {
  bool isShowPassword = true;
  AppUser appUser = AppUser();
  final _authService = locator<AuthService>();
  final _dbService = locator<DatabaseService>();

  showPassword() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }
}
