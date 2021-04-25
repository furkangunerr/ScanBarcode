import 'package:new_project_1/constant/border_constant.dart';
import 'package:new_project_1/constant/color_constant.dart';
import 'package:new_project_1/constant/duration_constant.dart';
import 'package:new_project_1/constant/padding_constant.dart';

abstract class BaseState {
  ColorConstants colorConstants = ColorConstants.instance;
  DurationConstants durationConstants = DurationConstants.instance;
  PaddingConstants paddingConstants = PaddingConstants.instance;
  BorderConstants borderConstants = BorderConstants.instance;
}
