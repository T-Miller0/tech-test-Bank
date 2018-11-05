require 'date'

# User can input a specific date
class TheDate
  def new_date(inputed_date)
    d = Date.parse(inputed_date)
    d.strftime('%d/%m/%Y')
  end
end
