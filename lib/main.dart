import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_tutorial/bloc/number_bloc.dart';

import 'add_bloc/add_number_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => AddNumberBloc(),
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Num1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Num2"),
            ),
          ),
          MaterialButton(
            onPressed: () {
              int num1 = int.parse(num1Controller.text);
              int num2 = int.parse(num2Controller.text);
              BlocProvider.of<AddNumberBloc>(context).add(AddEvent(num1, num2));
            },
            child: Text("Hisoblash"),
            color: Colors.green,
          ),
          SizedBox(
            height: 100,
          ),
          BlocBuilder<AddNumberBloc, AddNumberState>(
            builder: (context, state) {
              if (state is AddNumberInitial) {
                return Text(
                  "0",
                  style: TextStyle(fontSize: 30),
                );
              } else if (state is AddResult) {
                return Text(
                  state.natija.toString(),
                  style: TextStyle(fontSize: 30),
                );
              } else {
                return SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
