require 'statement'

describe Statement do

    test_statement = [{Balance:1500, Credit:1500, Date:"10/01/2012"},
      {Balance:1000, Debit:-500, Date:"14/01/2012"}]

  it 'Deposit and withdrawal' do
    subject.deposit_statement('10/01/2012', 1500)
    subject.withdrawal_statement('14/01/2012', 500)
    expect(subject.account_statement).to eq test_statement
  end
end
