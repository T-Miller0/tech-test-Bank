require 'Statement'

describe Statement do
  it 'User has a balance' do
    expect(subject.balance).to eq 0
  end
end
