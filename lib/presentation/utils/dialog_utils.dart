import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:lottie/lottie.dart';

class DialogUtils {

  void showUtilsDialog({required BuildContext context, required Widget child}) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: child,
        )
    );
  }

  void showLoadingDialog({required BuildContext context}) {
    showUtilsDialog(
        context: context,
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstraint.black2,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24,),
              Lottie.asset(
                  "assets/icons/football_loading_lottie.json",
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                  height: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 18,),
              Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w700,
                  color: ColorConstraint.blue,
                ),
              ),
              SizedBox(height: 16,),
            ],
          ),
        )
    );
  }

  void showErrorDialog({
    required BuildContext context,
    required String title,
    required String buttonText,
    required Function() listenerOK
  }) {
    showUtilsDialog(
      context: context,
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstraint.black2,
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Lottie.asset(
                "assets/icons/fail_lottie.json",
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
              fit: BoxFit.contain
            ),
            SizedBox(height: 18,),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Source Sans Pro',
                fontWeight: FontWeight.w700,
                color: ColorConstraint.white,
              ),
            ),
            SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    side: BorderSide(color: ColorConstraint.blue, width: 2)
                ),
                onPressed: listenerOK,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w700,
                    color: ColorConstraint.blue,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16,),
          ],
        ),
      )
    );
}

}

