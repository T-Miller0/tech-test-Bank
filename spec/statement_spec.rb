require 'Statement'

describe Statement do
  it 'User has a balance' do
    expect(subject.balance).to eq 0
  end

  it "User can #top_up" do
    expect(subject.top_up(100)).to eq 100
  end
end
