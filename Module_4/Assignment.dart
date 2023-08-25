abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrawn: $amount');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance - amount >= -overdraftLimit) {
      balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  var savings = SavingsAccount(123456, 1000, 0.05);
  print('Savings Account:');
  savings.deposit(500);
  savings.withdraw(200);
  print('Current Balance: ${savings.balance.toStringAsFixed(2)}');
  print('');

  var current = CurrentAccount(789012, 2000, 1000);
  print('Current Account:');
  current.deposit(300);
  current.withdraw(2500);
  print('Current Balance: ${current.balance.toStringAsFixed(2)}');
}
