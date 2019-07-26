// Define Interfaces and Share Class Members through Mixins in Dart

void main() {
  var pixel = Phone('Pixel XL', 'HTC');
  pixel.getDeviceInfo();
  pixel.getAllFeatures();
}
// Mixin
mixin FeaturesMixin {
  bool bluetooth = true;
  bool dualsim = false;
  bool nfc = true;
}
// Can extends minxin with "on" keywords
mixin UtilitiesMixin on FeaturesMixin {
  bool calculator = true;
  bool flashlight = true;
  bool thermometer = false;

  // Utility Method
  String _has(bool feat) => feat ? 'Yes' : 'No';

  void getAllFeatures() => print('''
  --FEATURES---
  Calculator: ${_has(calculator)}
  Flashlight: ${_has(flashlight)}
  Thermometer: ${_has(thermometer)}
  ''');
}

// An interface provide a contract containing instance variable and methods that must be define by the class that implement it

// to define an inteface, create a class or abstract class
abstract class Device {
  String name;
  String manufacturer;
  void getDeviceInfo();
}

// class that implement an interface
// MIxin can be use with the "with" clause
class Phone with FeaturesMixin, UtilitiesMixin implements Device {
  Phone(this.name, this.manufacturer);

  String name;
  String manufacturer;

  void getDeviceInfo() => print('''
  ===
  Device name : $name
  Manufacture by: $manufacturer

  ==FEATURES--
  Bluetooth: ${bluetooth ? 'Yes' : 'No'}
  // Access property and method from "super" keyword
  Dual Sim: ${_has(super.dualsim)}
  Nfc : ${nfc ? 'Yes' : 'No'}
    ''');
}