import 'dart:developer';

import 'package:citytech/features/home/domain/entity/outlet_entity.dart';
import 'package:citytech/features/home/domain/entity/transaction_entity.dart';
import 'package:citytech/features/home/presentation/blocs/outlet_report/outlet_report_bloc.dart';
import 'package:citytech/features/home/presentation/blocs/transaction_report/transaction_report_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return RefreshIndicator(
      onRefresh: () async {
        log('Refreshed');
        BlocProvider.of<TransactionReportBloc>(context)
            .add(FetchTransactionReport());
        BlocProvider.of<OutletReportBloc>(context)
            .add(OutletReportFetchEvent());
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Reports'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: ListView(
              shrinkWrap: true,
              children: [
                BlocBuilder<TransactionReportBloc, TransactionReportState>(
                    builder: (context, state) {
                  if (state is TransactionReportLoading) {
                    return _loadingShimmers(context);
                  } else if (state is TransactionReportLoaded) {
                    return Card(
                        child: SizedBox(
                      height: 250,
                      width: screenWidth,
                      child: SfCircularChart(
                        title: ChartTitle(
                          borderWidth: 3,
                          alignment: ChartAlignment.center,
                          text: 'Transaction Report',
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        legend: Legend(
                          isVisible: true,
                          alignment: ChartAlignment.center,
                          position: LegendPosition.left,
                        ),
                        series: <CircularSeries>[
                          PieSeries<TransactionReportEntityItem, String>(
                            explode: true,
                            dataSource: state.transactionList,
                            xValueMapper:
                                (TransactionReportEntityItem data, _) =>
                                    data.type,
                            yValueMapper:
                                (TransactionReportEntityItem data, _) =>
                                    data.value,
                          )
                        ],
                      ),
                    ));
                  } else if (state is NoTransactionReport) {
                    return Center(child: Text(state.message));
                  } else if (state is TransactionReportError) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return const Center(
                      child: Text("UnKnown State "),
                    );
                  }
                }),
                SizedBox(
                  height: 10,
                ),
                BlocBuilder<OutletReportBloc, OutletReportState>(
                    builder: (context, state) {
                  if (state is OutletReportLoading) {
                    return _loadingShimmers(context);
                  } else if (state is OutletReportLoaded) {
                    return Card(
                        child: SizedBox(
                      height: 250,
                      width: screenWidth,
                      child: SfCircularChart(
                        margin: EdgeInsets.all(10),
                        title: ChartTitle(
                          borderWidth: 3,
                          alignment: ChartAlignment.center,
                          text: 'Outlet Report',
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        series: <CircularSeries>[
                          DoughnutSeries<OutletEntity, String>(
                            explode: true,
                            dataSource: state.outletList,
                            xValueMapper: (OutletEntity data, _) => data.type,
                            yValueMapper: (OutletEntity data, _) => data.value,
                            dataLabelSettings: DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside,
                              labelIntersectAction: LabelIntersectAction.none,
                              connectorLineSettings: ConnectorLineSettings(
                                type: ConnectorType.line,
                              ),
                            ),
                            dataLabelMapper: (datum, index) {
                              return '${datum.type} : ${datum.value}';
                            },
                          )
                        ],
                      ),
                    ));
                  } else if (state is OutletReportEmpty) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is OutletReportError) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else {
                    return const Center(
                      child: Text("UnKnown State "),
                    );
                  }
                }),
              ],
            ),
          )),
    );
  }

  _loadingShimmers(context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Card(
        child: SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
