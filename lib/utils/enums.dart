enum ScreenSize { large, medium, small, none }

enum PaymentType {
  interac('Interac'),
  voidCheque('Void Cheque');

  final String label;

  const PaymentType(this.label);
}


