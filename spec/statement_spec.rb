require 'statement'

describe Statement do
  it 'Return an emply statement' do
    expect(subject.account_statement).to eq []
  end

  it 'Deposit shows date, amount and total balance' do
    expect(subject.deposit_statement('10/01/2012', 1000, 1000)).to eq [{Date: "10/01/2012", Credit_Debit: 1000, Balance: 1000}]
  end

  it 'After a deposit account_statement is not empty' do
    subject.deposit_statement('10/01/2012', 1000, 1000)
    expect(subject.account_statement).not_to be_empty
  end
end
