import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
import 'package:notebook/auth/login.dart';

class ViewPdf extends StatefulWidget {
  @override
  _ViewPdfState createState() => _ViewPdfState();
}

class _ViewPdfState extends State<ViewPdf> {
  PDFDocument doc;
  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context).settings.arguments;
    viewNow() async {
      doc = await PDFDocument.fromURL(data);
      setState(() {});
    }

    Widget loading() {
      viewNow();
      if (doc == null) {
        return Text("Loading");
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mycolor,
        title: Text("Retrieve Pdf"),
      ),
      body: doc == null ? loading() : PDFViewer(document: doc),
    );
  }
}
