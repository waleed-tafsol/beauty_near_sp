import 'package:flutter/material.dart';

class VNotchedShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    if (guest == null) return Path()..addRect(host);

    final double barTopY = host.top;
    final double barBottomY = host.bottom;
    final double centerX = host.center.dx;
    const double notchDepth = 40.0;
    const double cornerRadius = 20.0;

    final double notchRadiusX = 65;
    final double notchRadiusY = notchDepth;

    final Path path = Path()
      ..moveTo(host.left + cornerRadius, barTopY)
      ..arcToPoint(
        Offset(host.left, barTopY + cornerRadius),
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      ..lineTo(host.left, barBottomY - cornerRadius)
      ..arcToPoint(
        Offset(host.left + cornerRadius, barBottomY),
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      ..lineTo(host.right - cornerRadius, barBottomY)
      ..arcToPoint(
        Offset(host.right, barBottomY - cornerRadius),
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      ..lineTo(host.right, barTopY + cornerRadius)
      ..arcToPoint(
        Offset(host.right - cornerRadius, barTopY),
        radius: Radius.circular(cornerRadius),
        clockwise: false,
      )
      ..lineTo(centerX + notchRadiusX, barTopY)
      ..cubicTo(
        centerX + notchRadiusX / 2,
        barTopY,
        centerX + notchRadiusX / 3,
        barTopY + notchRadiusY,
        centerX,
        barTopY + notchRadiusY,
      )
      ..cubicTo(
        centerX - notchRadiusX / 3,
        barTopY + notchRadiusY,
        centerX - notchRadiusX / 2,
        barTopY,
        centerX - notchRadiusX,
        barTopY,
      )
      ..close();

    return path;
  }
}

// class VNotchedShape extends NotchedShape {
//   @override
//   Path getOuterPath(Rect host, Rect? guest) {
//     final double r = guest!.width / 1.5;
//
//     final double invertMultiplier = 1.0;
//
//     const double s1 = 15.0;
//     const double s2 = 1.0;
//
//     final double a = -r - s2;
//     final double b = host.top - guest.center.dy;
//
//     final double n2 = math.sqrt(b * b * r * r * (a * a + b * b - r * r));
//     final double p2xA = ((a * r * r) - n2) / (a * a + b * b);
//     final double p2xB = ((a * r * r) + n2) / (a * a + b * b);
//     final double p2yA = math.sqrt(r * r - p2xA * p2xA) * invertMultiplier;
//     final double p2yB = math.sqrt(r * r - p2xB * p2xB) * invertMultiplier;
//
//     final List<Offset> p = List<Offset>.filled(6, Offset.zero);
//
//     // p0, p1, and p2 are the control points for segment A.
//     p[0] = Offset(a - s1, b);
//     p[1] = Offset(a, b);
//     final double cmp = b < 0 ? -1.0 : 1.0;
//     p[2] = cmp * p2yA > cmp * p2yB ? Offset(p2xA, p2yA) : Offset(p2xB, p2yB);
//
//     // p3, p4, and p5 are the control points for segment B, which is a mirror
//     // of segment A around the y axis.
//     p[3] = Offset(-1.0 * p[2].dx, p[2].dy);
//     p[4] = Offset(-1.0 * p[1].dx, p[1].dy);
//     p[5] = Offset(-1.0 * p[0].dx, p[0].dy);
//
//     // translate all points back to the absolute coordinate system.
//     for (int i = 0; i < p.length; i += 1) {
//       p[i] += guest.center;
//     }
//
//     // Use the calculated points to draw out a path object.
//     final Path path = Path()..moveTo(host.left, host.top);
//     final double notchConstant = 20;
//     path
//       ..lineTo(p[0].dx, p[0].dy)
//       ..quadraticBezierTo(p[1].dx - 5, p[1].dy, p[2].dx, p[2].dy)
//       ..lineTo(p[2].dx + notchConstant, p[2].dy + notchConstant)
//       ..quadraticBezierTo(
//         host.width / 2,
//         guest.height - 10,
//         p[3].dx - notchConstant,
//         p[3].dy + notchConstant,
//       )
//       ..lineTo(p[3].dx, p[3].dy)
//       ..quadraticBezierTo(p[4].dx + 5, p[4].dy, p[5].dx, p[5].dy)
//       ..lineTo(host.right, host.top)
//       ..lineTo(host.right, host.bottom)
//       ..lineTo(host.left, host.bottom);
//
//     return path..close();
//   }
// }
