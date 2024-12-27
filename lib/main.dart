import 'package:citytech/config/themes.dart';
import 'package:citytech/core/di_container/di_locator.dart';
import 'package:citytech/features/presentation/blocs/outlet_report/outlet_report_bloc.dart';
import 'package:citytech/features/presentation/blocs/transaction_report/transaction_report_bloc.dart';
import 'package:citytech/features/presentation/screens/home_screen.dart';
import 'package:citytech/features/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TransactionReportBloc()
            ..add(
              FetchTransactionReport(),
            ),
        ),
        BlocProvider(
          create: (context) => OutletReportBloc(
            locator(),
          )..add(
              OutletReportFetchEvent(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'City Report',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const HomeScreen(),
        },
        theme: AppThemes.lightTheme,
      ),
    );
  }
}
