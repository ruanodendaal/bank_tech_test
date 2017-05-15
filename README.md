[![Build Status](https://travis-ci.org/ruanodendaal/bank_tech_test.svg?branch=master)](https://travis-ci.org/ruanodendaal/bank_tech_test)

# Bank tech test

## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### User Stories
```
As a customer
I want to be able to open an account
so that I can bank
```
```
As a customer
I want to deposit money into my account
so that I increase my balance
```
```
As a customer
I want to withdraw money from my account
so that I can by goods
```
```
As a customer
I want an account statement
so that I can keep track of my account usage
```


### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Instructions

```ruby
::: require './lib/account'
=> true
::: a = Account.new
=> #<Account:0x007fba028e82a8 @balance=0, @statement=#<Statement:0x007fba028e8208 @summary=[]>>
::: account.deposit(1000)
=> [#<Transaction:0x007fba02810bc8 @amount=1000, @balance=1000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>]
::: account.deposit(2000)
=> [#<Transaction:0x007fba02810bc8 @amount=1000, @balance=1000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>,
 #<Transaction:0x007fba010de3d8 @amount=2000, @balance=3000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>]
::: account.withdraw(500)
=> [#<Transaction:0x007fba02810bc8 @amount=1000, @balance=1000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>,
 #<Transaction:0x007fba010de3d8 @amount=2000, @balance=3000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>,
 #<Transaction:0x007fba019bbd20 @amount=-500, @balance=2500, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>]
::: account.print_statement
date || credit || debit || balance
15/05/2017 || || 500.00 || 2500.00
15/05/2017 || 2000.00 || || 3000.00
15/05/2017 || 1000.00 || || 1000.00
=> [#<Transaction:0x007fba019bbd20 @amount=-500, @balance=2500, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>,
 #<Transaction:0x007fba010de3d8 @amount=2000, @balance=3000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>,
 #<Transaction:0x007fba02810bc8 @amount=1000, @balance=1000, @date=#<Date: 2017-05-15 ((2457889j,0s,0n),+0s,2299161j)>>]
```
