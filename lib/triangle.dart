enum MeasurementSystem { mm, cm, dm, m, inch, feet }

class Triangle {
  double heightInMm;
  double widthInMm;
  MeasurementSystem measurementSystem;

  Triangle._(this.heightInMm, this.widthInMm, this.measurementSystem);

  Triangle.mm(double height, double width)
    : this._(height, width, MeasurementSystem.mm);

  Triangle.cm(double height, double width)
    : this._(height * 10, width * 10, MeasurementSystem.cm);

  Triangle.dm(double height, double width)
    : this._(height * 100, width * 100, MeasurementSystem.dm);

  Triangle.m(double height, double width)
    : this._(height * 1000, width * 1000, MeasurementSystem.m);

  Triangle.inch(double height, double width)
    : this._(height * 25.4, width * 25.4, MeasurementSystem.inch);

  Triangle.feet(double height, double width)
    : this._(height * 304.8, width * 304.8, MeasurementSystem.feet);

  Triangle(double height, double width, MeasurementSystem measurementSystem)
    : this._(
        _convertToMm(height, measurementSystem),
        _convertToMm(width, measurementSystem),
        measurementSystem,
      );

  static double _convertToMm(
    double value,
    MeasurementSystem measurementSystem,
  ) {
    switch (measurementSystem) {
      case MeasurementSystem.mm:
        return value;
      case MeasurementSystem.cm:
        return value * 10;
      case MeasurementSystem.dm:
        return value * 100;
      case MeasurementSystem.m:
        return value * 1000;
      case MeasurementSystem.inch:
        return value * 25.4;
      case MeasurementSystem.feet:
        return value * 304.8;
    }
  }
}
