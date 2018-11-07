require 'print_statement'

describe PrintStatement do

  it "Prints an empty user statement" do
    my_acc = []
    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n").to_stdout
  end

  it "Prints a deposit_statement" do
    my_acc = [{
      Date: '10/01/2012',
      Credit: 1000.00,
      Balance: 1000.00
    }]

    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n"\
    "10/01/2012 || 1000.00 ||  || 1000.00\n").to_stdout
  end
end
