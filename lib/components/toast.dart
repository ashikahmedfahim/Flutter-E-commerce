import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showToast(String toastText) async {
  return Fluttertoast.showToast(
    msg: toastText,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
  );
}
