require 'print_statement'

describe PrintStatement do

  statement = Statement.new
  my_acc = statement.account_statement

  it "Prints an empty user statement" do
    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n").to_stdout
  end

  it "Prints a deposit_statement" do
    statement.deposit_statement('10/01/2012', 1000.00)
    expect {subject.my_statement(my_acc)}.to output("date || credit || debit || balance\n"\
    "10/01/2012 || 1000.00 ||  || 1000.00\n").to_stdout
  end

  it 'format_num returns a number to two decimals' do
    expect(subject.format_num(10.99)).to eq ("10.99")
  end
end
