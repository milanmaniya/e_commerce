import 'package:e_commerce/common/custom_shape/curved_edge/curved_edge.dart';
import 'package:flutter/material.dart';


class CurveEdgeWidget extends StatelessWidget {
  const CurveEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdge(),
      child: child,
    );
  }
}
