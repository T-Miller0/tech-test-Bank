# Bank application

This is a Bank application, where a user can deposit,
withdraw and view their account statement.

## Installation
Install ruby
clone from github
run bundle install


## Usage

Open IRB

1 - require "./lib/print_statement.rb"
2 - printer = PrintStatement.new
3 - statement = Statement.new
4 - statement.deposit_statement("02/10/2020", 1000)
or - s.withdrawal_statement("02/10/2020", 1000)
# "02/10/2020" is to be your desired date
# 1000 is to be your desired input
# You may repeat step 4 as desired
5 - printer.my_statement(sstatement.account_statement)
# This will show you your account statement


In order to view the sum
As a user
I would like to view my balance

In order to view the new sum
As a user
I would like to deposit money

In order to spend money
As a User
I would like to withdraw money

In order to see the history of transactions
As a User
I would like to see the date

So I can see the history of all my transactions
As a User
I would like to be able to view the history

In order to see the history of top_up's
As a User
I would like my top_up's to be added to my account_statement

In order to see the history of withdraws
As a User
I would like my withdrawals to be added to my account_statement

So I do not become overdrawn
As a user
I would like my account to return Insufficient funds

In order to view my history
As a User
I would like to see all my transactions
