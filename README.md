# Bank Account Management System

## Description

This Dart program provides a simple banking system with functionalities to:

1. Create accounts with unique IDs and balances.
2. Withdraw or deposit money while handling edge cases.
3. Display account details, including account ID and current balance.

### Key Features

1. **Account Initialization**:

   - Supports two types of constructors:
     - Standard constructor to set the account ID and initial balance.
     - Named constructor to set the account ID with an initial balance of zero.

2. **Deposit Method**:

   - Ensures the deposit amount is positive.
   - Adds the specified amount to the balance.

3. **Withdraw Method**:

   - Ensures the withdrawal amount is positive.
   - Checks if the balance is sufficient before deducting the amount.
   - Displays appropriate messages for invalid or insufficient funds.

4. **Display Account Details**:
   - Prints the account ID and current balance in a formatted way.
