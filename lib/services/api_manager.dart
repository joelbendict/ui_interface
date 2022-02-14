// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:ui_interface/constants/strings.dart';
// import 'package:ui_interface/models/sales_invoices.dart';
//
// class api_Manager {
//   Future<Welcome> welcomePage() async {
//     var salesInvoice = null;
//     var client = http.Client();
//
//     var responce = await client.get(Strings.SalesInvoice);
//     if (responce.statusCode ==200){
//       var jsonString = responce.body;
//       var jsonMap = json.decode(jsonString);
//       var salesInvoice = Welcome.fromJson(jsonMap);
//     }
//   }
// }