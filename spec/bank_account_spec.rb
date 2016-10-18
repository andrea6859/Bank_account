require 'bank_account'

describe Bank_account do
  it 'has a initial balance of zero' do
    expect(subject.balance).to eq(0)
  end

describe '#credit' do
  it 'can add credit to the balance' do
    expect{ subject.credit 1}.to change{ subject.balance }.by 1
  end

describe '#debit' do
  it 'can debit from the balance' do
    expect{ subject.debit 1}.to change{subject.balance }.by -1
    end
  end

describe '#statement' do
  it 'prints statement with time, amount and balance'
    expect{ subject.statement}.
  end
end
end
