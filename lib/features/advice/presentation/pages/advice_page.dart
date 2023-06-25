import 'package:advicer/core/core.dart';
import 'package:advicer/features/advice/advice.dart';
import 'package:advicer/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicePageProvider extends StatelessWidget {
  const AdvicePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AdviceBloc>(),
      child: const AdvicePage(),
    );
  }
}

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advicer'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Expanded(
                child: BlocBuilder<AdviceBloc, AdviceState>(
                  builder: (context, state) {
                    if (state is AdviceInitial) {
                      return const Center(
                        child: Text('Your advice is waiting for you...'),
                      );
                    } else if (state is AdviceLoading) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (state is AdviceLoaded) {
                      return AdviceFiled(
                        advice: state.advice,
                      );
                    } else if (state is AdviceError) {
                      return ErrorField(error: state.message);
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () => BlocProvider.of<AdviceBloc>(context)
                    .add(RequestAdviceEvent()),
                child: const Text('Get Advice'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
