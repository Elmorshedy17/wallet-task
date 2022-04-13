// import 'dart:io';
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// // import 'package:bego/app_routes_names/app_routes_names.dart';
// // import 'package:bego/features/order_details/order_details_page.dart';
// // flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//
// class PushNotificationService {
//   final FirebaseMessaging _fcm = FirebaseMessaging.instance;
//   final prefs = locator<PrefsService>();
//   final cartCountManager = locator<CartCountManager>();
//
//   Future initialize() async {
//     _fcm.requestPermission(alert: true, badge: true, sound: true);
//
//     _fcm.getToken().then((token) {
//       print(token);
//       locator<FcmTokenManager>().inFcm.add(token!);
//     });
//
//
//
//     // if (Platform.isIOS) {
//     //   if (prefs.appLanguage == 'en') {
//     //     _fcm.subscribeToTopic('IosEn${prefs.currencyId}');
//     //   } else {
//     //     _fcm.subscribeToTopic('IosAr${prefs.currencyId}');
//     //   }
//     // } else {
//     //   if (prefs.appLanguage == 'en') {
//     //     _fcm.subscribeToTopic('AndroidEn${prefs.currencyId}');
//     //   } else {
//     //     _fcm.subscribeToTopic('AndroidAr${prefs.currencyId}');
//     //   }
//     // }
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage remoteMessage) {
//       var notificationData = remoteMessage.data;
//       var notificationHead = remoteMessage.notification;
//
//       var title = notificationHead?.title;
//       var body = notificationHead?.body;
//       var id = notificationData['id'];
//       var action = notificationData['action'];
//       if(action == "cart"){
//         print("$action => notification action // cart count => $id");
//
//         cartCountManager.cartCount = int.parse("$id");
// return;
//       }
//
//
//
//
//
//         if (action != null) {
//           locator<FcmTokenManager>().notificationType = action;
//         }
//
//         locator<LocalNotificationService>()
//             .showNotification("$title", "$body", "$id");
//
//
//     });
//
//     // FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
//       _serializeAndNavigate(remoteMessage);
//     });
//
//
//     FirebaseMessaging.instance
//         .getInitialMessage()
//         .then((RemoteMessage? remoteMessage) {
//       if (remoteMessage != null) {
//         _serializeAndNavigate(remoteMessage);
//       }
//     });
//
//     //
//     // Future<void> onBackgroundMessage(RemoteMessage message) async {
//     //   await Firebase.initializeApp();
//     //   _serializeAndNavigate(message);
//     //   return Future.value();
//     // }
//
//   }
//
//
//
//
//   void _serializeAndNavigate(RemoteMessage message) {
//
//
//     var id = message.data['id'];
//
//     if (message.data['action'] == "my_stars") {
//         locator<NavigationService>().pushNamedTo(
//           AppRoutesNames.MyStarsPage,
//         );
//     }else if(message.data['action'] == "order"){
//       locator<NavigationService>().pushNamedTo(
//         AppRoutesNames.OrderDetailsPage,
//         arguments: OrderDetailsPageArgs(orderId:int.parse("$id") ),
//       );
//
//     }else if(message.data['action'] == "star"){
//       locator<NavigationService>().pushNamedTo(
//         AppRoutesNames.StarDetailsPage,
//         arguments: StarDetailsArgs(
//             starDetailsRequest: StarDetailsRequest(starId:message.data['id']),)
//       );
//     }
//
//     }
//   }
//
// Future<void> setupInteractedMessage() async {
//   await Future.delayed(const Duration(seconds: 3));
//   print("application launched !!!");
//
//   // Get any messages which caused the application to open from
//   // a terminated state.
//   RemoteMessage? initialMessage =
//   await FirebaseMessaging.instance.getInitialMessage();
//
//   // If the message also contains a data property with a "type" of "chat",
//   // navigate to a chat screen
//   // locator<NavigationService>().pushNamedTo(
//   //   AppRoutesNames.OrderDetailsPage,
//   //   arguments: OrderDetailsPageArgs(orderId:int.parse("${initialMessage!.data["id"]}")),
//   // );
//
//   if (initialMessage?.data['action'] == "my_stars") {
//     locator<NavigationService>().pushNamedTo(
//       AppRoutesNames.MyStarsPage,
//     );
//   }else if(initialMessage?.data['action'] == "order"){
//     locator<NavigationService>().pushNamedTo(
//       AppRoutesNames.OrderDetailsPage,
//       arguments: OrderDetailsPageArgs(orderId:int.parse("${initialMessage?.data['id']}") ),
//     );
//
//   }else if(initialMessage?.data['action'] == "star"){
//     locator<NavigationService>().pushNamedTo(
//         AppRoutesNames.StarDetailsPage,
//         arguments: StarDetailsArgs(
//           starDetailsRequest: StarDetailsRequest(starId:initialMessage?.data['id']),)
//     );
//   }
//
//   // context.use<ToastTemplate>().show('${initialMessage!.data['model_id']}');
//
//   // Also handle any interaction when the app is in the background via a
//   // Stream listener
//   // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//   //
//   //   print("onMessageOpenedApp: $message");
//   //
//   //
//   //   // locator<NavigationService>().pushNamedTo(
//   //   //     AppRouts.OrderDetailsPage,
//   //   //     arguments: OrderDetailsPageArgs(
//   //   //       orderId: message.data['model_id'],
//   //   //       // orderStatus: ordersItems![index].status
//   //   //     )
//   //   // );
//   // });
// }
