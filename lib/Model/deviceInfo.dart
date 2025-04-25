
class DeviceInfo {
  final String deviceId;
  final String model;
  final String manufacturer;
  final String osName;
  final String osVersion;

  DeviceInfo({
    required this.deviceId,
    required this.model,
    required this.manufacturer,
    required this.osName,
    required this.osVersion,
  });


  factory DeviceInfo.fromJson(Map<String, dynamic> json) {
    return DeviceInfo(
      deviceId: json['deviceId'],
      model: json['model'],
      manufacturer: json['manufacturer'],
      osName: json['osName'],
      osVersion: json['osVersion'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
      'model': model,
      'manufacturer': manufacturer,
      'osName': osName,
      'osVersion': osVersion,
    };
  }
}
