import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

import '../../domain/entities/enums.dart';
import '../../domain/models/response_model.dart';
import '../widgets/no_internet_widget.dart';

abstract class Utility {
  static void printDLog(String message) {
    Logger().d('${"marvel"}: $message');
  }

  static void printILog(dynamic message) {
    Logger().i('${"marvel"}: $message');
  }

  static void printLog(dynamic message) {
    Logger().log(Level.info, message);
  }

  static void printELog(String message) {
    Logger().e('${"marvel"}: $message');
  }

  static String? validatePassword(String value) {
    if (value.trim().isNotEmpty) {
      if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        if (value.contains(RegExp(r'[A-Z]'))) {
          if (value.contains(RegExp(r'[0-9]'))) {
            if (value.length < 6) {
              return 'ShouldBe6Characters'.tr;
            } else {
              return null;
            }
          } else {
            return 'ShouldHaveOneDigit'.tr;
          }
        } else {
          return 'ShouldHaveOneUppercaseLetter'.tr;
        }
      } else {
        return 'shouldHaveOneSpecialCharacter'.tr;
      }
    } else {
      return 'PasswordRequired'.tr;
    }
  }

  ///Returns true if email is valid.

  static bool emailValidator(String email) {
    return false;
  }

  /// Returns true if the internet connection is available.
  static Future<bool> isNetworkAvailable() async =>
      await InternetConnectionChecker().hasConnection;

  ///Print the details of the response.
  static void printResponseDetails(Response? response) {
    if (response != null) {
      var isOkay = response.isOk;
      var statusCode = response.statusCode;
      var method = response.request?.method ?? '';
      var path = response.request?.url.path ?? '';
      var query = response.request?.url.queryParameters ?? '';
      if (isOkay) {
        printLog(
            'Path:$path, Method:$method, Status Text:$statusCode, Query:$query');
      } else {
        printELog(
            'Path:$path, Method:$method, Status Text:$statusCode, Query:$query');
      }
    }
  }

  static void showLoader() async {
    await EasyLoading.show();
  }

  ///Close Loader.
  static void closeLoader() {
    EasyLoading.dismiss();
  }

  ///Show info Dialogue. In which we can show a normal message like any
  ///information regarding anything.
  static void showDialogue(String message) async {
    await Get.dialog(CupertinoAlertDialog(
      title: const Text('Info'),
      content: Text(message),
      actions: [TextButton(onPressed: Get.back, child: const Text('Okay'))],
    ));
  }

  ///Show info Dialogue. In which we can show a normal message like any
  ///information regarding anything.
  static void showInfoAndNavigateDialogue(
      String message, VoidCallback onPressed) async {
    await Get.dialog(CupertinoAlertDialog(
      title: const Text('Info'),
      content: Text(message),
      actions: [TextButton(onPressed: onPressed, child: const Text('Okay'))],
    ));
  }

  ///Show dialogue box as alert box, in which user have two choices yes or no
  ///for eg:-Are you sure you want to quit, Options are yes or no.
  static void showAlertDialogue(
      String? message, String? title, Function()? onPress) async {
    await Get.dialog(CupertinoAlertDialog(
      title: Text('$title'),
      content: Text('$message'),
      actions: <Widget>[
        CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: onPress,
            child: const Text('Yes')),
        const CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: closeDialog,
          child: Text('No'),
        )
      ],
    ));
  }

  /// Dialog to ask user to enable a service which is required to perform
  /// some operation.
  ///
  /// [title] : The title of the service required.
  /// [message] : The message of the service required.
  static void askToEnableServiceFromSetting(
    String title,
    String message,
    BuildContext context, {
    required Function()? onPressed,
  }) {
    Get.dialog(CupertinoAlertDialog(
      title: Text(
        title,
      
      ),
      content: Text(
        message,
       
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          onPressed: onPressed,
          isDefaultAction: true,
          child: const Text(
            "Yes",
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Get.back<void>();
          },
          child: const Text("No"),
        )
      ],
    ));
  }

  ///Close any open dialogue
  static void closeDialog() {
    if (Get.isDialogOpen ?? false) Get.back<void>();
  }

  ///Close any open snack bar.
  static void closeSnackBar() {
    if (Get.isSnackbarOpen) {
      Get.back<void>();
    }
  }

  ///show no internet dialogue if internet is not available.
  static Future<void> showNoInternetDialogue() async {
    await Get.dialog<void>(
        const Center(
          child: NoInternetWidget(),
        ),
        barrierDismissible: false);
  }

  ///Show a floating snack Bar in which, Can show any [message] .
  ///
  /// [message]:message you need to show to the user.
  ///
  ///[messageType]:Type of the message for different background color.
  ///
  ///[onTap]:An event for onTap.
  ///
  ///[actionName]:The name for the action.
  static void showMessage(String? message, MessageType messageType,
      Function()? onTap, String actionName) {
    if (message == null || message.isEmpty) return;
    closeDialog();
    closeLoader();
    closeSnackBar();
    var backgroundColor = Colors.black;
    switch (messageType) {
      case MessageType.error:
        backgroundColor = Colors.red;
        break;
      case MessageType.information:
        backgroundColor = Colors.black.withOpacity(0.7);
        break;
      case MessageType.success:
        backgroundColor =Colors.green;
        break;
      default:
        backgroundColor = Colors.black;
        break;
    }
    Future.delayed(const Duration(seconds: 0), () {
      Get.rawSnackbar(
          messageText: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          mainButton: TextButton(
            onPressed: onTap ?? Get.back,
            child:
                Text(actionName, style: const TextStyle(color: Colors.white)),
          ),
          backgroundColor: backgroundColor,
          margin: const EdgeInsets.all(15.0),
          borderRadius: 15,
          snackStyle: SnackStyle.FLOATING,
          snackPosition: SnackPosition.BOTTOM);
    });
  }

  static void showInfoDialog(ResponseModel data,
      [bool isSuccess = false]) async {
    await Get.dialog(
      CupertinoAlertDialog(
        title: Text(isSuccess ? 'SUCCESS' : 'ERROR'),
        content: Text(
          jsonDecode(data.data)['returnMessage'],
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: Get.back,
            isDefaultAction: true,
            child: Text(
              'okay'.tr,
            ),
          ),
        ],
      ),
    );
  }
}
