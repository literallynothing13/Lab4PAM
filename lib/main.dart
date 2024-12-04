import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/repositories/wine_repository.dart';
import 'domain/usecases/get_wines_usecase.dart';
import 'presentation/bloc/wine_bloc.dart';
import 'presentation/bloc/wine_event.dart';
import 'presentation/screens/wine_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inițializează repository-ul și use case-ul necesar pentru Bloc
    final wineRepository = WineRepository();
    final getWinesUseCase = GetWinesUseCase(wineRepository);

    return MaterialApp(
      title: 'Wine App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => WineBloc(getWinesUseCase)..add(LoadWines()),
        child: WineScreen(),
      ),
    );
  }
}
