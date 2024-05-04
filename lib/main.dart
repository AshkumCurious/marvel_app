import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/navigators/app_pages.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    // await Hive.initFlutter();
    // await Hive.openBox<dynamic>('hiveBox');
    // await initServices();
    runApp(const MyApp());
  } catch (exception) {}
}

// Future<void> initServices() async {
//   Get.put(Repository(
//     Get.put(
//       DeviceRepository(),
//       permanent: true,
//     ),
//     Get.put(
//       DataRepository(
//         Get.put(
//           ConnectHelper(),
//           permanent: true,
//         ),
//       ),
//       permanent: true,
//     ),
//   ));

// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // Gives the width
    double height = MediaQuery.of(context).size.height; // Gives the height
    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          scrollBehavior: MyBehavior(),
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          getPages: AppPages.pages,
          initialRoute: AppPages.initial,
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
