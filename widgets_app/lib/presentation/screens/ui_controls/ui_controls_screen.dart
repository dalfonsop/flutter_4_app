import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});
  static const name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, buat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation? selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
          title: Text('Developer Mode'),
          subtitle: Text('Controles adicionales'),
        ),
        ExpansionTile(
          title: Text('Vehículo de transporte'),
          subtitle: Text('Transportation $selectedTransportation'),
          children: [
            RadioGroup(
              groupValue: selectedTransportation,
              onChanged: (value) {
                setState(() {
                  selectedTransportation = value;
                });
              },
              child: Column(
                children: [
                  RadioListTile(
                    value: Transportation.car,
                    title: Text('By Car'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    visualDensity: VisualDensity.compact,
                    dense: true,
                  ),
                  RadioListTile(
                    value: Transportation.submarine,
                    title: Text('By Submarine'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    visualDensity: VisualDensity.compact,
                    dense: true,
                  ),
                  RadioListTile(
                    value: Transportation.buat,
                    title: Text('By Boat'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    visualDensity: VisualDensity.compact,
                    dense: true,
                  ),
                  RadioListTile(
                    value: Transportation.plane,
                    title: Text('By Plane'),
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    visualDensity: VisualDensity.compact,
                    dense: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        CheckboxListTile(
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
          title: Text('Incluir desayuno ? '),
        ),
        CheckboxListTile(
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
          title: Text('Incluir almuerzo ? '),
        ),
        CheckboxListTile(
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
          title: Text('Incluir cena ? '),
        ),
      ],
    );
  }
}
