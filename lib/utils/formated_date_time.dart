import 'package:intl/intl.dart';

final class FormatedDateTime {
  static String getFormatedDateTime() {
    return '${DateFormat('jm').format(DateTime.now())}:${DateFormat('yMMMEd').format(DateTime.now())}';
  }
}
