import 'package:flutter/material.dart';
import 'kobis_api.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final kobisApi = KobisApi(apiKey: '01736d1cbc4c7f3e45f3f5f6354d4e12');

  void showCal() async {
    var dt = await showDatePicker(context: context, 
    initialDate: DateTime.now().subtract(const Duration(days: 1)), 
    firstDate: DateTime(2022), 
    lastDate: DateTime.now().subtract(const Duration(days: 1))
    );
    if(dt !=null){
      //2022-02-02 00:00:00
      var targetDt = dt.toString().split(' ')[0].replaceAll('-', '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ),
    );
  }
}
