require_relative 'statement'

class PrintStatement

  def my_statement(account_statement)
    puts "date || credit || debit || balance"
    account_statement.each do |value|
      d = value[:Date]
      cr = value[:Credit]
      deb = value[:Debit]
      bal = value[:Balance]
      puts "#{d} || #{cr} || #{deb} || #{bal}"
    end
    return true
  end
end
