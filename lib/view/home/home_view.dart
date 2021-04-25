import 'package:flutter/material.dart';
import 'package:new_project_1/components/card/barcode_card.dart';
import 'package:new_project_1/core/base/base_state.dart';
import 'package:new_project_1/core/extension/context_extension.dart';
import 'package:new_project_1/view/home/home_model.dart';
import 'package:new_project_1/view/home/home_view_model.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseState {
  HomeModel model;
  final HomeViewModel viewModel = HomeViewModel();
  int value = 0;
  @override
  void initState() {
    super.initState();
    model = HomeModel('Barcodes', 'You can scan your barcode in this page.');
    getSharedValues();
  }

  Future<void> getSharedValues() async {
    value = await viewModel.getValueOnPreferences();
    setState(() {});
  }

  void _changeValue() {
    value = viewModel.randomValue();
    viewModel.setValueOnPreferences(value);
    setState(() {});
  }

  Color get _primary => value % 2 == 0 ? Colors.deepPurple : Colors.brown;
  Color get _secondary => value % 2 == 0 ? Colors.cyan : Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _changeValue,
        child: Text('$value'),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: BarcodeCard(
            name: '',
            body: '',
          )),
          Expanded(
              flex: 2,
              child: ListView(
                children: [
                  AnimatedContainer(
                    duration: durationConstants.durationLow,
                    height: context.dynamicHeight(0.1),
                    color: _primary,
                  ),
                  AnimatedContainer(
                    duration: durationConstants.durationLow,
                    height: context.dynamicHeight(0.01),
                    color: _secondary,
                  ),
                  AnimatedContainer(
                    duration: durationConstants.durationLow,
                    height: context.dynamicHeight(0.1),
                    color: _primary,
                  ),
                  AnimatedContainer(
                    duration: durationConstants.durationLow,
                    height: context.dynamicHeight(0.01),
                    color: _secondary,
                  ),
                  AnimatedContainer(
                    duration: durationConstants.durationLow,
                    height: context.dynamicHeight(0.1),
                    color: _primary,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
