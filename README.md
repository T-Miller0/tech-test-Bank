# Bank application

This is a Bank application, where a user can deposit,  
withdraw and view their account statement.

## Installation
1. $ git clone https://github.com/T-Miller0/tech-test-Bank.git  
2. Install ruby by $ rvm install 2.5.1  
3. run $ bundle install

# Running the Tests
Rspec was used as the test framework for this project.  
To run the tests go to the terminal and type $ rspec  

## Coding Style Tests
Rubocop was used as the test framework for this project.  
To run the tests go to the terminal and type $ rubocop


## Deployment

To interact;

1. Open IRB, to do so type in the terminal $ irb
2. require "./lib/print_statement.rb"
3. statement = Statement.new
4. statement.deposit_statement("02/10/2020", 1000)
or statement.withdrawal_statement("02/10/2020", 1000)  
"02/10/2020" is to be your desired date  
1000 is to be your desired input  
You may repeat step 4 as desired  
5. printer.my_statement(statement.account_statement)
This will show you your account statement

# Built with
Ruby 2.5.1  
Rspec  
Rubocop  
Simplecov  

# User Stories

In order to view the sum   
As a user  
I would like to view my balance<br>

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

# Author
Tom Miller



![alt text](https://github.com/T-Miller0/models/blob/master/Bank_model.png)
