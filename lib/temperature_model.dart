enum ConversionType {
  celsius('Celsius (°C to °F)'),
  fahrenheit('Fahrenheit (°F to °C)');

  final String label;
  const ConversionType(this.label);

  // Convert to the target unit
  double convert(double input) {
    switch (this) {
      case ConversionType.celsius:
        // Celsius to Fahrenheit: F = (C * 9/5) + 32
        return (input * 9 / 5) + 32;
      case ConversionType.fahrenheit:
        // Fahrenheit to Celsius: C = (F - 32) * 5/9
        return (input - 32) * 5 / 9;
    }
  }

  // Resulting unit symbol
  String get targetUnit {
    switch (this) {
      case ConversionType.celsius:
        return '°F';
      case ConversionType.fahrenheit:
        return '°C';
    }
  }
}
