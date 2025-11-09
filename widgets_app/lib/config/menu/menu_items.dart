import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    subtitle: 'Contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subtitle: 'Generales y contorlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
    MenuItem(
    title: 'Snackbar y dialogs',
    subtitle: 'Indicaores en pantallas',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
      MenuItem(
    title: 'Animated container',
    subtitle: 'Statefull widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined,
  ),
        MenuItem(
    title: 'UI Contorls + Styles',
    subtitle: 'Serie de contorles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
];
