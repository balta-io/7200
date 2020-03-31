import 'package:local_auth/local_auth.dart';

class AuthController {
  var _auth = LocalAuthentication();

  Future<bool> authenticate() async {
    if (!await isBiometricAvailable()) return false;

    await loadBiometricTypes();
    return await showBiometricAuthentication();
  }

  Future<bool> isBiometricAvailable() async {
    try {
      bool isAvailable = await _auth.canCheckBiometrics;
      return isAvailable;
    } catch (ex) {
      return false;
    }
  }

  Future loadBiometricTypes() async {
    try {
      await _auth.getAvailableBiometrics();
    } catch (ex) {
      return;
    }
  }

  Future<bool> showBiometricAuthentication() async {
    bool isAuthenticated = await _auth.authenticateWithBiometrics(
      localizedReason: "Autentique-se para prosseguir",
      useErrorDialogs: true,
      stickyAuth: true,
    );

    return isAuthenticated;
  }
}
