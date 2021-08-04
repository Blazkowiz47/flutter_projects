import 'package:flutter/material.dart';

void showCustomDialog({
  required String title,
  required String description,
  required BuildContext context,
  String buttonTitle = "OK",
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return AlertDialog(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        content: Text(
          description,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        actions: [
          Container(
            height: height * 0.05,
            width: width * 0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: MaterialButton(
              child: Text(
                buttonTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
