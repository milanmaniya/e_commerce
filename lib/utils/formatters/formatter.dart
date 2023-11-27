import 'package:intl/intl.dart';

class TFormatter {
  static String formateDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // assume 10 digit phone number like (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // remove all non-digit character from  the phone number

    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digit only

    String countryCode = '+${digitOnly.substring(0, 2)}'; // find country code and store countryCode variable
    digitOnly = digitOnly.substring(2); // find phone number and store digit only variables

    // add the remaining digit with proper formatting
    final formatterNumber = StringBuffer();
    formatterNumber.write('($countryCode)'); // create a string for formating 

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatterNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formatterNumber.write(' ');
      }
      i = end;
    }
    return formatterNumber.toString();
  }
}
