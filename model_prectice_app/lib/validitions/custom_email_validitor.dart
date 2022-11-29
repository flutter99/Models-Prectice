import 'package:flutter/material.dart';

class EmailAddressValidator {
  const EmailAddressValidator();

  @override
  void validate(String value) {
    if (!value.endsWith("@google.com")) {
      throw Exception("Email address is not valid!");
    }
  }
}