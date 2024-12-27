import 'package:citytech/presentation/blocs/transaction_report/transaction_report_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          return ListView.builder(
            itemCount: state.transactionList.length,
            itemBuilder: (context, index) {
              final transaction = state.transactionList[index];
              return ListTile(
                title: Text(transaction.value.toString()),
                subtitle: Text(transaction.type ?? "-"),
              );
            },
          );
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
