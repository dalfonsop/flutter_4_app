import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screen')),
      body: _BottomsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _BottomsView extends StatelessWidget {
  const _BottomsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated button')),
            ElevatedButton(onPressed: null, child: Text('Elevated button')),
            ElevatedButton.icon(onPressed: (){}, label: Text('Elevated icon'), icon: Icon(Icons.access_alarm_rounded),),
            FilledButton(onPressed: (){}, child: Text('Filled button')),
            FilledButton.icon(onPressed: (){}, label: Text('Filled Icon'), icon: Icon(Icons.accessibility_new_outlined)),
            OutlinedButton(onPressed: (){}, child: Text('Outline button')),
            OutlinedButton.icon(onPressed: (){}, label: Text('Outline icon'),icon: Icon(Icons.ad_units_sharp),),
            TextButton(onPressed: (){}, child: Text('Text button')),
            TextButton.icon(onPressed: (){}, label: Text('Text icon'),icon: Icon(Icons.stacked_line_chart_rounded),),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration)),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amberAccent)),)



          ],
        ),
      ),
    );
  }
}
