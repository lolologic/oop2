import 'package:oop2/triangle.dart';

void main() {
  Triangle triangle1 = Triangle.m(1, 5);

  print('Höhe: ${triangle1.heightInMm} mm');
  print('Breite: ${triangle1.widthInMm} mm');
  print('System: ${triangle1.measurementSystem}');

  Triangle triangle2 = Triangle(1, 5, MeasurementSystem.dm);

  print('Höhe: ${triangle2.heightInMm} mm');
  print('Breite: ${triangle2.widthInMm} mm');
  print('System: ${triangle2.measurementSystem}');
}
