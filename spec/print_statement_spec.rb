require 'print_statement'

describe PrintStatement do

  statement = Statement.new
  my_acc = statement.account_statement

  it "Prints an empty user statement" do
    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n").to_stdout
  end

  it "Prints a deposit_statement" do
    statement.deposit_statement('10/01/2012', 1000)
    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n"\
    "10/01/2012 || 1000 ||  || 1000\n").to_stdout
  end
end
