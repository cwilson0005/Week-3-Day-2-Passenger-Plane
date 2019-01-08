require('pg')

class PassengerList

  attr_accessor(:first_name, :last_name, :seat, :vegetarian)
  attr_reader(:id)

  def initialize(options)
    @first_name = options['first_name']
    @last_name = options['last_name']
    @seat = options['seat'].to_i
    @vegetarian = options['vegetarian'] == 'YES' ? true : false
    @id = options['id'].to_i if options['id']
  end

  def save()
    db= PG.connect({dbname: 'passenger_plane', host: 'localhost'})
    sql = "INSERT INTO passenger_list (first_name, last_name, seat, vegetarian) VALUES ($1, $2, $3, $4) RETURNING *"
    values = [@first_name, @last_name, @seat, @vegetarian]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]["id"].to_i
    db.close()
  end

  def update()
    db = PG.connect({dbname: 'passenger_plane', host: 'localhost'})
    sql = "UPDATE passenger_list SET (first_name, last_name, seat, vegetarian) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @last_name, @seat, @vegetarian, @id]
    db.prepare("update", sql)
    db.exec_prepared("update")
    db.close()
  end

end
