import 'package:flutter/material.dart';
import 'package:new_project_1/constant/border_constant.dart';
import 'package:new_project_1/constant/color_constant.dart';
import 'package:new_project_1/constant/padding_constant.dart';

class BarcodeCard extends StatelessWidget {
  final String name;
  final String body;
  const BarcodeCard({Key key, @required this.name, @required this.body})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConstants.instance.avocado,
      margin: PaddingConstants.instance.paddingAllNormal,
      shape: BorderConstants.instance.radiusAllCircular,
      child: buildAlignPaddingText(context),
    );
  }

  Align buildAlignPaddingText(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: PaddingConstants.instance.paddingAllNormal,
        child: buildColumnText(context),
      ),
    );
  }

  Column buildColumnText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTextBarcode(context),
        buildTextDescription(context),
      ],
    );
  }

  Text buildTextBarcode(BuildContext context) {
    return Text(name,
        style: Theme.of(context).textTheme.headline3.copyWith(
            color: ColorConstants.instance.white, fontWeight: FontWeight.bold));
  }

  Text buildTextDescription(BuildContext context) {
    return Text(body,
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(color: ColorConstants.instance.white));
  }
}
