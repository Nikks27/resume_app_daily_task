
import 'package:flutter/material.dart';

import 'PdfGenrate/pdf.dart';
import 'PdfGenrate/pdfgenrator.dart';


class gmail extends StatelessWidget {
  const gmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => InvoiceScreen(),
        '/pdf' : (context) => PdfPageScreen(),
      }
    );
  }
}


