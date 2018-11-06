require 'print_statement'

describe PrintStatement do
  it "Prints an empty user statement" do
    expect {subject.my_statement}.to output("date || credit || debit || balance\n").to_stdout
  end
end
