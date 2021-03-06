import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EcosystemFirebaseUser {
  EcosystemFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

EcosystemFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EcosystemFirebaseUser> ecosystemFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EcosystemFirebaseUser>(
        (user) => currentUser = EcosystemFirebaseUser(user));
