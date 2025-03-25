import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseService {
  FirebaseMessaging? messaging;
  BehaviorSubject? messageStreamController;

  initialize() {
    messaging = FirebaseMessaging.instance;
  }

  listenToMessage() {
    messageStreamController = BehaviorSubject<RemoteMessage>();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      messageStreamController!.sink.add(message);
    });
  }
}

FirebaseService firebaseService = FirebaseService();
