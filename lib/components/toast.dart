// Package imports:
import 'package:fluttertoast/fluttertoast.dart';

// Project imports:
import 'package:lacuna/constants.dart';

Future<bool?> showToast(String toastText) async {
  return Fluttertoast.showToast(
    msg: toastText,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    backgroundColor: kPrimaryColor,
  );
}
