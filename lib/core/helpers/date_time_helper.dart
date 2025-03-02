import 'package:intl/intl.dart';

String dateTimeHelper({required String wantToParse, required String format}) {
  DateTime parse = DateTime.parse(wantToParse); //1: i parse String to DateTime
  String form = DateFormat(format).format(parse);
  //i change Format date to day, so this format will back a String
  return form;
}
