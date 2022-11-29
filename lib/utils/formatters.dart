import 'package:intl/intl.dart';

class Format {
  static String date(DateTime value) {
    final formattedDate = DateFormat.yMMMd().format(value).toString();
    return formattedDate;
  }
}
