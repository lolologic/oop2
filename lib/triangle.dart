/// Represents the supported measurement systems.
enum MeasurementSystem {
  /// Millimeters.
  mm,

  /// Centimeters.
  cm,

  /// Decimeters.
  dm,

  /// Meters.
  m,

  /// Inches.
  inch,

  /// Feet.
  feet,
}

/// Represents a triangle with height and width stored in millimeters.
class Triangle {
  /// The triangle's height in millimeters.
  double heightInMm;

  /// The triangle's width in millimeters.
  double widthInMm;

  /// The measurement system used when the triangle was created.
  MeasurementSystem measurementSystem;

  Triangle._(this.heightInMm, this.widthInMm, this.measurementSystem);

  /// Creates a triangle with [height] and [width] measured in millimeters.
  Triangle.mm(double height, double width)
    : this._(height, width, MeasurementSystem.mm);

  /// Creates a triangle with [height] and [width] measured in centimeters.
  Triangle.cm(double height, double width)
    : this._(height * 10, width * 10, MeasurementSystem.cm);

  /// Creates a triangle with [height] and [width] measured in decimeters.
  Triangle.dm(double height, double width)
    : this._(height * 100, width * 100, MeasurementSystem.dm);

  /// Creates a triangle with [height] and [width] measured in meters.
  Triangle.m(double height, double width)
    : this._(height * 1000, width * 1000, MeasurementSystem.m);

  /// Creates a triangle with [height] and [width] measured in inches.
  Triangle.inch(double height, double width)
    : this._(height * 25.4, width * 25.4, MeasurementSystem.inch);

  /// Creates a triangle with [height] and [width] measured in feet.
  Triangle.feet(double height, double width)
    : this._(height * 304.8, width * 304.8, MeasurementSystem.feet);

  /// Creates a triangle with [height] and [width] measured in
  /// [measurementSystem].
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
