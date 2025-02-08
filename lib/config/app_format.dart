import 'package:intl/intl.dart';

class AppFormat {
  static String shortPrice(num number) {
    return NumberFormat.compactCurrency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0, // gada koma2 an
    ).format(number);
  }

  static String longhortPrice(num number) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String justDate(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  /// source : DateTime | String
  /// Monday, 2 Jan 23
  static String shortDate(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMM yy').format(DateTime(source));

      case DateTime:
        return DateFormat('EEEE, d MMM yy').format(source);

      default:
        return 'Not Valid!';
    }
  }

  /// source : DateTime | String
  /// Monday, 2 Januari 2023
  static String fullDate(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMMM yyyy').format(DateTime(source));

      case DateTime:
        return DateFormat('EEEE, d MMMM yyyy').format(source);

      default:
        return 'Not Valid!';
    }
  }
}
