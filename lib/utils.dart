import 'package:intl/intl.dart';

String getNaira(){
// to add the currency
  final format = NumberFormat.simpleCurrency(name: "NGN");
  return format.currencySymbol;
}