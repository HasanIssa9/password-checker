import 'package:flutter/material.dart';

class TabData{
  final String label;
  final IconData icon;

  TabData({required this.label, required this.icon});

  static String selectedTab = '';

  static List<TabData> buttons = [
    TabData(label: 'Home', icon: Icons.home),
    TabData(label: 'Offer', icon: Icons.local_offer),
    TabData(label: 'Cart', icon: Icons.shopping_cart),
    TabData(label: 'Profile', icon: Icons.person),
  ];
}