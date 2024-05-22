import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text('Invoice Genrater',style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Colors.white),),
        actions: [
          GestureDetector(
            onTap: () {
                Navigator.of(context).pushNamed('/pdf');
            },
            child: Icon(Icons.picture_as_pdf,size: 25,color: Colors.white,),
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: List.generate(invoiceList.length, (index) => ListTile(
            title:Text(
              '${invoiceList[index].name!}',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
            ),
            trailing: Text(
              '${invoiceList[index].price!}',
              style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('${invoiceList[index].catagory!}',style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.w500,
            ),),
          ))
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
              invoiceList.add(InvoiceModel(
                name: 'Asus Vivobook',price: '63000/',catagory: 'Laptop'),);
          });
        },
      ),
    );
  }
}

List invoiceList = [
  InvoiceModel(name:'Asus Vivobook',price: '63000/',catagory: 'Laptop',),
  InvoiceModel(name:'Lenovo',price: '55000/',catagory: 'Laptop'),
  InvoiceModel(name:'Hp Victus',price: '57000/',catagory: 'Laptop'),
];

class InvoiceModel {
  String? name = '';
  String? price = '';
  String? catagory = '';

  InvoiceModel({this.name,this.price,this.catagory});
}

Future<Uint8List> generatePdf() {
  final pdf=pw.Document();
  pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
            children: [
              pw.Container(
                  height: 100,
                  width: double.infinity,
                  decoration: pw.BoxDecoration(
                    color: PdfColors.white,
                  ),
                  child: pw.Row(
                      children: [
                        ...List.generate(invoiceList.length, (index) => pw.Column(
                            children: [
                              pw.Text(
                                invoiceList[index].name.toString()+'          ',
                                style: pw.TextStyle(fontSize: 25,),),
                              pw.Text(
                                invoiceList[index].price.toString()+'         ',
                                style: pw.TextStyle(fontSize: 25,),),
                              pw.Text(
                                invoiceList[index].catagory.toString()+'       ',
                                style: pw.TextStyle(fontSize: 25,),)
                            ]
                        ),
                        )
                      ]
                  )
              )
            ]
        ),
      )
  );
  return pdf.save();
}

