require 'bank_account'

describe Bank_account do

  subject(:bank_account) {described_class.new}
  let(:transactions) { {:time => Time.now, credit: 1000, balance: 1000} }
  let(:statement) { {:time => Time.now, credit: 1000, debit: 500, balance: 500} }

  before do
    allow(Time).to receive(:now) {2016-10-18 12:38:08.266302000 +0100}
  end
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
    expect(subject.transactions).to include transactions
    end
end

describe '#statement' do
  it 'shows statement' do
    subject.credit(1000)
    subject.debit(500)
    expect(subject.statement).to include statement
  end
end

end
