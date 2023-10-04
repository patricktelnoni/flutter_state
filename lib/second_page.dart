import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/counter_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context, value, child) => Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: Text(
              value.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium
          ),
        ),
      ),
    ));
  }
}