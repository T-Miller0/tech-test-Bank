require 'statement'

describe Statement do
  it 'Return an emply statement' do
    expect(subject.account_statement).to eq []
  end
end
