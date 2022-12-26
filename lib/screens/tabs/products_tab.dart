import 'package:flutter/material.dart';
import 'package:the_serve_admin/widgets/text_widget.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldText(
                label: 'List of Products', fontSize: 24, color: Colors.blue),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                color: Colors.blue,
                child: DataTable(columns: [
                  DataColumn(
                      label: NormalText(
                          label: 'No.', fontSize: 12, color: Colors.white)),
                  DataColumn(
                      label: NormalText(
                          label: 'Image', fontSize: 12, color: Colors.white)),
                  DataColumn(
                      label: NormalText(
                          label: 'Name', fontSize: 12, color: Colors.white)),
                  DataColumn(
                      label: NormalText(
                          label: 'Price', fontSize: 12, color: Colors.white)),
                  DataColumn(
                      label: NormalText(
                          label: 'Provider',
                          fontSize: 12,
                          color: Colors.white)),
                ], rows: [
                  for (int i = 0; i < 10; i++)
                    DataRow(cells: [
                      DataCell(NormalText(
                          label: '$i', fontSize: 14, color: Colors.white)),
                      DataCell(Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          minRadius: 50,
                          maxRadius: 50,
                          backgroundColor: Colors.white,
                        ),
                      )),
                      DataCell(NormalText(
                          label: 'SCH', fontSize: 14, color: Colors.white)),
                      DataCell(NormalText(
                          label: '200.00php',
                          fontSize: 14,
                          color: Colors.white)),
                      DataCell(NormalText(
                          label: 'Google LLC',
                          fontSize: 14,
                          color: Colors.white)),
                    ])
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}