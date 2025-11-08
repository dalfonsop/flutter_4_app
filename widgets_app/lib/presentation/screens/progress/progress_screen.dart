import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  static const name = 'progress_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Indicator')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10),
          Text('Circular Progreess Indicator'),
          SizedBox(height: 10),

          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 10),
          Text('Progress Indicator controlado'),
          SizedBox(height: 10),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300),(computationCount) {
        return (computationCount *2)/100;
      }).takeWhile( (computationCount) => computationCount < 100.0),
      builder: (context, asyncSnapshot) {
        final progressValue = asyncSnapshot.data ?? 0;
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(strokeWidth: 2, value: progressValue, color: Colors.black45,),
              SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue,)),
            ],
          ),
        );
      }
    );
  }
}
