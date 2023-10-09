import 'package:flutter/cupertino.dart';

class LinearColorContainer extends StatelessWidget {
  const LinearColorContainer({
    Key? key,
    this.child,
   required this.colors,
  }) : super(key: key);

  final Widget? child;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
    );
  }
}
