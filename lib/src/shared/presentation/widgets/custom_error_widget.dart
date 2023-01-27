import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

import '../../../core/error/error_object.dart';
import '../../../core/gen/assets.gen.dart';

class CustomErrorWidget extends StatelessWidget {
  final ErrorObject errorObject;

  const CustomErrorWidget({
    Key? key,
    required this.errorObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: context.paddingNormal,
        child: Column(
          children: [
            Assets.lottie.notFound.lottie(width: 30.h, height: 30.h),
            SizedBox(height: 3.h),
            Text(errorObject.title, style: context.textTheme.bodyMedium),
            SizedBox(height: 1.h),
            Text(errorObject.message,
                style: context.textTheme.bodySmall, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
