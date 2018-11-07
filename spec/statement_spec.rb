require 'statement'

describe Statement do
  it 'Return an emptly statement' do
    expect(subject.account_statement).to eq []
  end

  it 'Deposit shows date, amount and total balance' do
    subject.deposit_statement('10/01/2012', 1000)
    expect(subject.account_statement).to eq [{ Date: '10/01/2012', Credit: 1000.00, Balance: 1000 }]
  end

  it 'After a deposit account_statement is not empty' do
    subject.deposit_statement('10/01/2012', 1000)
    expect(subject.account_statement).not_to be_empty
  end

  it 'shows a #deposit_statement' do
    acc_management = double(AccountManagement)
    statement = Statement.new(acc_management)

    expect(acc_management).to receive(:top_up).with(1000)
    expect(acc_management).to receive(:total_balance)

    statement.deposit_statement('14/01/2012', 1000)
  end

  it 'shows a #withdrawal_statement' do
    acc_management = double(AccountManagement)
    statement = Statement.new(acc_management)

    allow(acc_management).to receive(:top_up).with(1000)
    allow(acc_management).to receive(:total_balance)

    statement.deposit_statement('14/01/2012', 1000)

    expect(acc_management).to receive(:withdraw).with(500)

    statement.withdrawal_statement('14/01/2012', 500)
  end

  it '#account_statement has deposit_statement and withdrawal_statement' do
    subject.deposit_statement('10/01/2012', 1000)
    subject.withdrawal_statement('14/01/2012', 500)
    expect(subject.account_statement.length).to be(2)
  end

  it 'show_statement allows user to print their account_statement' do
    prt_statement = double(PrintStatement)
    acc_management = double(AccountManagement)
    statement = Statement.new(acc_management, prt_statement)
    test_stat = '10/01/2012 || 1000.00 ||  || 1000.00'

    expect(prt_statement).to receive(:my_statement).with([])

    statement.show_statement
  end
end
