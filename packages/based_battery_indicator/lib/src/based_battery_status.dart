import 'index.dart';

/// [BasedBatteryStatus]
class BasedBatteryStatus {
  const BasedBatteryStatus({
    required int value,
    BasedBatteryStatusType type = BasedBatteryStatusType.normal,
  })  : _value = value,
        _type = type;

  final int _value;
  int get value => type != BasedBatteryStatusType.error ? _value : 100;

  final BasedBatteryStatusType _type;
  BasedBatteryStatusType get type {
    if (_type.isError || !(0 <= _value && _value <= 100)) {
      return BasedBatteryStatusType.error;
    }
    return _type;
  }

  Color getBatteryColor(ColorScheme colorScheme) {
    return Color(0xFF20C4BD);
  }
}
