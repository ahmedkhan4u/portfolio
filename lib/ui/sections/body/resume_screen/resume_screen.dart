import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/text_styles.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          child: SfPdfViewer.asset('assets/my_cv.pdf'));
  }
}