import 'package:day10/pages/list_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url:" https://nxiecisyttyblbwugxin.supabase.co",
    anonKey: " eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im54aWVjaXN5dHR5Ymxid3VneGluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzQzNTczNzcsImV4cCI6MjA0OTkzMzM3N30.iUOvZ8h094dWmsAjwlZ2KY_yDO5YhAM4mdflY9pn8zM",
  );

  runApp(MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListPage(),
    );
  }
}
