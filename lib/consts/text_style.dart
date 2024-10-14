import 'package:flutter/material.dart';
import 'package:brozerplaylist/consts/colors.dart';

const light = 'vazirlight';
const bold = 'vazirbold';

ourStyle({family = 'vazirlight', double? size = 14, color = whiteColor}) {
  return TextStyle(
    fontFamily: family,
    fontSize: size,
    color: color,
  );
}
