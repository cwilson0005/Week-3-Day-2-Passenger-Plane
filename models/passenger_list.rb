require('pg')

class PassengerList

  attr_accessor(:first_name, :last_name, :seat, :vegetarian)
  attr_reader(:id)

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @seat = options['seat'].to_i
    @vegetarian = options['vegetarian'].to_b
    @id = options['id'].to_i if options['id']
  end

end
