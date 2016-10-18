require 'bank_account'

describe Bank_account do

  subject(:bank_account) {described_class.new}


  it 'has a initial balance of zero' do
    expect(subject.balance).to eq(0)
  end

describe '#credit' do
  it 'can add credit to the balance' do
    expect{ subject.credit 1}.to change{ subject.balance }.by 1
  end
end

describe '#debit' do
  it 'can debit from the balance' do
    expect{ subject.debit 1}.to change{subject.balance }.by -1
  end
end

describe '#transaction history' do
  it 'stores transactions' do
    subject.credit(1000)
    expect(subject.transactions).to include(:time =>Time.now.strftime("%m/%d/%Y"), :credit => 1000, :balance => 1000)
    end
end



end
