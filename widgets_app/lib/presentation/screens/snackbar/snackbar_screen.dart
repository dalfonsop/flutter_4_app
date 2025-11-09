import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'snackbar_screen';

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
       builder: (context) => AlertDialog(
        title: Text('Estas seguro ?'),
        content: Text('balbaalbalblaldbksdhjfhdsjh hfugdhgfudh dfghfdjhg'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar'))
        ],
       ),
       );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar y dialogs')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  Text('mensajitooooo')
                ]);
              },
              child: Text('Licensias usadas'),
            ),
            FilledButton.tonal(         
              onPressed: () => openDialog(context),
              child: Text('Mostrar dialogs')
              
            ),
          ],
        ),
      ),
    );
  }
}
