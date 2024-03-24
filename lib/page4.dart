import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(2.0),
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(label: Text('Nama')),
                DataColumn(label: Text('NIM')),
                DataColumn(label: Text('Kelas')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Abdul Diki')),
                  DataCell(Text('12345678')),
                  DataCell(Text('A3')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Dikry Nurahaman')),
                  DataCell(Text('7020210039')),
                  DataCell(Text('B3')),
                ]),
                DataRow(cells: [
                  DataCell(Text('-')),
                  DataCell(Text('-')),
                  DataCell(Text('-')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
