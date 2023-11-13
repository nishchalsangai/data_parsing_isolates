import 'package:flutter/material.dart';
import 'package:oonzoo/modules/home/widgets/row_widget.dart';

class UniversitiyMetaDataCardWidget extends StatelessWidget {
  const UniversitiyMetaDataCardWidget({
    super.key,
    required this.domain,
    required this.alphaCode,
    required this.state,
    required this.name,
    required this.webpages,
  });
  final String domain, alphaCode, state, name, webpages;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        children: [
          RowWidget(
            title: 'Domain',
            body: domain,
          ),
          RowWidget(
            title: 'Alpha Code',
            body: alphaCode,
          ),
          RowWidget(
            title: 'State Province',
            body: state,
          ),
          RowWidget(
            title: 'name',
            body: name,
          ),
          RowWidget(
            title: 'web_pages',
            body: webpages,
          ),
        ],
      ),
    );
  }
}