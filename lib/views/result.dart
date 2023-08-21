import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Result extends StatefulWidget {
  final getTrack;
  const Result({required this.getTrack, super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Detail Resi',
      )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Nomor Resi: '),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              widget.getTrack['shipment_detail']['resi_no']),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Tipe Service: '),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.getTrack['shipment_detail']
                              ['service_type']),
                        ),
                      ]),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Nama Penerima: '),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.getTrack['shipment_detail']
                                ['consignee_name']),
                          ),
                        ],
                      ),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('No.HP Penerima: '),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.getTrack['shipment_detail']
                              ['consignee_phone']),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Note: '),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Text(widget.getTrack['shipment_detail']['note']),
                        ),
                      ]),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Nama Pengirim: '),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(widget.getTrack['shipment_detail']
                                ['consignee_name']),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount:
                          widget.getTrack['tracking_status_detail'].length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 10,
                                  color: widget.getTrack['tracking_status_detail']
                                              [index]['status'] ==
                                          'PICK UP'
                                      ? Colors.grey
                                      : widget.getTrack['tracking_status_detail']
                                                  [index]['status'] ==
                                              'MANIFESTED'
                                          ? Colors.blue
                                          : widget.getTrack['tracking_status_detail']
                                                      [index]['status'] ==
                                                  'INCOMING'
                                              ? Colors.yellow
                                              : widget.getTrack['tracking_status_detail']
                                                          [index]['status'] ==
                                                      'DELIVERY'
                                                  ? Colors.green
                                                  : widget.getTrack[
                                                                  'tracking_status_detail']
                                                              [index]['status'] ==
                                                          'RECEIVED'
                                                      ? Colors.green
                                                      : Colors.red,
                                  child: Text(''),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.getTrack['tracking_status_detail']
                                        [index]['dateprocess']),
                                    Text(widget.getTrack['tracking_status_detail']
                                        [index]['status'],),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
