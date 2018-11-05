require 'date'

class The_Date

  def new_date(inputed_date)
    d = Date.parse(inputed_date)
    d.strftime('%d/%m/%Y')
  end
end
