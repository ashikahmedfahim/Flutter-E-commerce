import 'package:fluttertoast/fluttertoast.dart';
import 'package:lacuna/constants.dart';

Future<bool?> showToast(String toastText) async {
  return Fluttertoast.showToast(
    msg: toastText,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
    backgroundColor: kPrimaryColor,
  );
}
