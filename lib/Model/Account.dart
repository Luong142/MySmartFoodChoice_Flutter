
class Account {
  String email;
  String password;
  String accountType; // this could be "User", "Guest", "Trainer", "Dietitian", etc.

  DateTime currentDateTrial;
  DateTime endDateTrial;

  bool isGuestTrialActive;


  void startGuestTrialPeriod()
  {
    if (accountType == "Guest")
    {
      currentDateTrial = DateTime.now();
      endDateTrial = currentDateTrial.add(const Duration(days: 3)); // 3 days later
    }
  }

  Account({
    this.email = '',
    this.password = '',
    this.accountType = '',
    required this.currentDateTrial,
    required this.endDateTrial,
    this.isGuestTrialActive = false,
  });

  void updateTrialStartDate() {
    currentDateTrial = DateTime.now();
  }

  Future<bool> checkGuestTrialActive() async
  {
    if (accountType == "Guest")
    {
      DateTime currentDate = DateTime.now();
      return currentDate.isBefore(endDateTrial); // compare the current date with the end date.
    }
    return false; // otherwise will be false by default.
  }

  void setGuestTrialActive(bool guestTrialActive)
  {
    isGuestTrialActive = guestTrialActive;
  }

  @override
  String toString()
  {
    return 'Account{email: $email, password: $password, accountType: $accountType, currentDateTrial: $currentDateTrial, endDateTrial: $endDateTrial, isGuestTrialActive: $isGuestTrialActive}';
  }
}
