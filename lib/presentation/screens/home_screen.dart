import 'package:citytech/data/models/outlet_report/outlet_report_model.dart';
import 'package:citytech/data/models/transaction_report/transaction_report_model.dart';
import 'package:citytech/presentation/blocs/outlet_report/outlet_report_bloc.dart';
import 'package:citytech/presentation/blocs/transaction_report/transaction_report_bloc.dart';
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

    return Scaffold(
        appBar: AppBar(
          title: const Text('Reports'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
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
                        PieSeries<TransactionItem, String>(
                          explode: true,
                          dataSource: state.transactionList,
                          xValueMapper: (TransactionItem data, _) => data.type,
                          yValueMapper: (TransactionItem data, _) => data.value,
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
                    height: 300,
                    width: screenWidth,
                    child: SfCircularChart(
                      title: ChartTitle(
                        borderWidth: 3,
                        alignment: ChartAlignment.center,
                        text: 'Outlet Report',
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      series: <CircularSeries>[
                        DoughnutSeries<OutletReportItem, String>(
                          explode: true,
                          dataSource: state.outletList,
                          xValueMapper: (OutletReportItem data, _) => data.type,
                          yValueMapper: (OutletReportItem data, _) =>
                              data.value,
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
                } else if (state is OutletReportError) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Center(
                      child: Text(state.message),
                    ),
                  );
                } else {
                  return const Center(
                    child: Text("UnKnown State "),
                  );
                }
              }),
            ],
          ),
        ));
  }

  _loadingShimmers(context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[100]!,
      highlightColor: Colors.grey[50]!,
      child: Card(
        child: SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
