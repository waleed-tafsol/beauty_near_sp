enum ScreenSize { large, medium, small, none }

enum PaymentType {
  interac('Interac'),
  voidCheque('Void Cheque');

  final String label;

  const PaymentType(this.label);
}

enum Days {
  monday('Monday'),
  tuesday('Tuesday'),
  wednesday('Wednesday'),
  thursday('Thursday'),
  friday('Friday'),
  saturday('Saturday'),
  sunday('Sunday');

  final String label;

  const Days(this.label);
}


