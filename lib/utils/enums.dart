enum ScreenSize { large, medium, small, none }

enum UserType {
  customer('Customer'),
  serviceProvider('Service Provider');

  final String label;

  const UserType(this.label);
}
