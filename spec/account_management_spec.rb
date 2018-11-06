require 'account_management'

describe AccountManagement do
  it 'User has a balance' do
    expect(subject.balance).to eq 0
  end

  it 'User can #top_up' do
    expect(subject.top_up(100)).to eq 100
  end

  it 'User can #withdraw money' do
    subject.top_up(100)
    subject.withdraw(50)
    expect(subject.balance).to eq -50
  end

  it 'Error if total_balance is negative' do
    expect{subject.withdraw(50)}.to raise_error(RuntimeError)
  end

  it 'Error if inputs a withdraw that is not a interger or float ' do
    expect{subject.withdraw("hello")}.to raise_error(RuntimeError)
  end

  it 'Error if inputs a top_up that is not a interger or float ' do
    expect{subject.top_up("Goodbye")}.to raise_error(RuntimeError)
  end
end
