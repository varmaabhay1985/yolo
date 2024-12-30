import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modus_assignment_app/resources/color_manager.dart';
import 'package:modus_assignment_app/screens/create_profile_screen.dart';
import 'package:modus_assignment_app/screens/edit_profile_screen.dart';
import 'package:modus_assignment_app/screens/face_detection_screen.dart';
import 'package:modus_assignment_app/screens/home_screen.dart';
import 'package:modus_assignment_app/screens/local_business_screen.dart';
import 'package:modus_assignment_app/screens/login_screen.dart';
import 'package:modus_assignment_app/screens/map_screen.dart';
import 'package:modus_assignment_app/screens/move2_screen.dart';
import 'package:modus_assignment_app/screens/move4_screen.dart';
import 'package:modus_assignment_app/screens/notification_screen.dart';
import 'package:modus_assignment_app/screens/splash_screen.dart';
import 'package:modus_assignment_app/widgets/bottom_nav_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/navbarscr': (context) => BottomNavbarMenuWidget(
              selectedIndex: 1,
            ),
        '/move2screen': (context) => Move2Screen(),
        '/move3screen': (context) => FaceDetectionScreen(),
        '/move4screen': (context) => Move4Screen(),
        '/mapscreen': (context) => MapScreen(),
        '/notificationscreen': (context) => NotificationScreen(),
        '/editprofilescreen': (context) => EditProfileScreen(),
        '/createprofilescreen': (context) => CreateProfileScreen(),
      },
    );
  }
}
