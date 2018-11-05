require 'statement'

describe Statement do
  it 'Return an emply statement' do
    expect(subject.account_statement).to eq []
  end

  it 'Deposit shows date, amount and total balance' do
    subject.deposit_statement('10/01/2012', 1000)
    expect(subject.account_statement).to eq [{Date: "10/01/2012", Credit_Debit: 1000, Balance: 1000}]
  end

  it 'After a deposit account_statement is not empty' do
    subject.deposit_statement('10/01/2012', 1000)
    expect(subject.account_statement).not_to be_empty
  end

  it 'shows a #withdrawal_statement' do
    subject.account_management.top_up(1000)
    subject.withdrawal_statement('14/01/2012', 500)
    expect(subject.account_statement).to eq [{Date: "14/01/2012", Credit_Debit: 500, Balance: 500}]
  end

  it '#account_statement has deposit_statement and withdrawal_statement' do
    subject.deposit_statement('10/01/2012', 1000)
    subject.withdrawal_statement('14/01/2012', 500)
    expect(subject.account_statement.length).to be(2)
  end
end
