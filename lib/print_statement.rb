require_relative 'statement'

class PrintStatement

  def my_statement(account_statement)
    puts "date || credit || debit || balance"
    account_statement.each do |value|
      d = value[:Date]
      cr = format_num (value[:Credit])
      deb = format_num (value[:Debit])
      bal = format_num (value[:Balance])
      puts "#{d} || #{cr} || #{deb} || #{bal}"
    end
    return true
  end

  def format_num(num)
    if num == nil
      return ""
    else
      return format('%.2f', num)
    end
  end
end
