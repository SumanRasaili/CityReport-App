import 'package:citytech/data/models/transaction_report_model.dart';
import 'package:citytech/presentation/blocs/transaction_report/transaction_report_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Report'),
      ),
      body: BlocBuilder<TransactionReportBloc, TransactionReportState>(
          builder: (context, state) {
        if (state is TransactionReortLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionReportLoaded) {
          return Card(
              child: SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
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
    );
  }
}
