import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/wine_bloc.dart';
import '../bloc/wine_state.dart';

class WineScreen extends StatelessWidget {
  const WineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Vinurilor'),
      ),
      body: BlocBuilder<WineBloc, WineState>(
        builder: (context, state) {
          if (state is WineLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WineLoaded) {
            final wines = state.wines;
            return ListView.builder(
              itemCount: wines.length,
              itemBuilder: (context, index) {
                final wine = wines[index];
                return ListTile(
                  title: Text(wine.name),
                  subtitle: Text('Origine: ${wine.origin}'),
                );
              },
            );
          } else if (state is WineError) {
            return const Center(child: Text('Eroare la încărcarea datelor.'));
          } else {
            return const Center(child: Text('Nicio informație disponibilă.'));
          }
        },
      ),
    );
  }
}
