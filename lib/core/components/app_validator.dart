class Validator {
  static String? username(String value) {
    if (value.isEmpty) {
      'pleas write your name';
    } else if (value.length < 8) {
      'Name must be at least 5 characters';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      'Please write your password';
    } else if (value.length < 8) {
      'Password must be at least 8 characters';
    }return null;
  }
}


