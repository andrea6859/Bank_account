class Bank_account

  attr_reader :balance, :transactions

def initialize
  @balance = 0
  @transactions = []
end

def credit(amount)
  @balance += amount
  @transactions.push(time: Time.now.strftime("%m/%d/%Y"), credit: amount, balance: balance)
end

def debit(amount)
  @balance -= amount
  @transactions.push(time: Time.now.strftime("%m/%d/%Y"), debit: amount, balance: balance)
end

def print_statement
  puts "date      || credit || debit || balance"
 @transactions.sort_by { |record| record[:time]}.each do |record|
   puts "#{record[:time]} || #{record[:credit]} || #{record[:debit]} || #{record[:balance]}"
 end

end


end
