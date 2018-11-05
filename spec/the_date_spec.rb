require './lib/the_date.rb'

describe The_Date do
  it 'shows inputed date' do
    expect(subject.new_date('14/01/2012')).to eq '14/01/2012'
  end
end
