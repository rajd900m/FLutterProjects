import 'dart:async';

import 'package:LoginBLoC/src/blocs/validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {

  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  //Adding data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid => Rx.combineLatest2(email, password, (eml, pwd) => true);


  //Changing the data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final getEmail = _email.value;
    final getPassword = _password.value;

    print(getEmail);
    print(getPassword);
  }

  dispose() {
    _email.close();
    _password.close();
  }

}

