# bank_tech_test

### The Brief
Create an app which can be interacted via IRB and enables user to deposits, withdraws and prints statements. Data can be kept in memory. Acceptance criteria:

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### Approach
I created three classes with the following responsibilities:

**Bank Account**
- allows user to deposit money via IRB
- allows user to withdraw money via IRB
- keep track of balance
- has a record all transactions

**Transaction**
- records a deposit or withdrawal amount
- records date of each transaction
- creates a formatted log

**Printer**
- prints a record of all transaction to screen


### Installation
- Clone this repo: **git clone git@github.com:lcbeh/bank_tech_test.git**

- Access the folder: **cd bank_tech_test**

- Run **bundle install**

- To run test: **rspec**

- Interact on IRB: **irb**

- Example interaction:

```
➜  bank_tech_test git:(master) ✗ irb
2.3.0 :001 > require './lib/bank_account.rb'
 => true
2.3.0 :002 > require './lib/transaction.rb'
 => true
2.3.0 :003 > require './lib/printer.rb'
 => true
2.3.0 :004 > my_account = BankAccount.new(Transaction, Printer)
 => #<BankAccount:0x007fc0b20f1570 @balance=0, @printer=Printer, @transaction=Transaction, @transactions=[]>
2.3.0 :005 > my_account.deposit(1000)
 => "Transaction successful."
2.3.0 :006 > my_account.withdraw(50)
 => "Transaction successful."
2.3.0 :007 > my_account.withdraw(200)
 => "Transaction successful."
2.3.0 :008 > my_account.print_statement
date       || credit     || debit      || balance
29/11/2016 ||            || 200.00     || 750.00
29/11/2016 ||            || 50.00      || 950.00
29/11/2016 || 1000.00    ||            || 1000.00
 => nil
2.3.0 :009 >
```
