void main() {
  // create an object of BankAccount class with 2 constructors
  BankAccount account1 = BankAccount(123456, 5000.0);
  BankAccount account2 = BankAccount.zero(789123);

  // display account details
  account1.displayAccountDetails();
  account2.displayAccountDetails();

  // withdraw money from account1
  account1.withdraw(-1000.0);
  account1.withdraw(0.0);
  account1.withdraw(5000.0);
  account1.withdraw(2000.0);

  // deposit money to account2
  account2.deposit(-1000.0);
  account2.deposit(0.0);
  account2.deposit(3000.0);

  // display account details after withdrawal and deposit
  account1.displayAccountDetails();
  account2.displayAccountDetails();
}

// class Banck Account
class BankAccount {
  // 2 vars account ID , balance
  int _accountID;
  double _balance;

  // getter and setter for account ID
  int get accountID => _accountID;
  set accountID(int value) {
    if (value <= 0) {
      print("Invalid account ID, please enter a positive number ");
    } else {
      _accountID = value;
    }
  }

  // getter and setter for balance
  double get balance => _balance;
  set balance(double value) {
    if (value < 0) {
      print("Invalid balance, please enter a non-negative number ");
    } else {
      _balance = value;
    }
  }

// method to display account details
  void displayAccountDetails() {
    print("Account ID: $_accountID");
    print("Balance: $_balance");
  }

  // constructor
  BankAccount(this._accountID, this._balance);

  // named constructor to initialize balance to zero
  BankAccount.zero(this._accountID) : _balance = 0.0;

  // method to withdraw money
  void withdraw(double amount) {
    if (amount > _balance) {
      print("Insufficient balance, withdrawal failed");
    } else if (amount <= 0) {
      print("Invalid amount, please enter a positive number ");
    } else {
      _balance -= amount;
      print("Withdrawal successful with amount $amount");
    }
  }

  // method to deposit money
  void deposit(double amount) {
    if (amount <= 0) {
      print("Invalid amount, please enter a positive number ");
    } else {
      _balance += amount;
      print("Deposit successful with amount $amount");
    }
  }
}
