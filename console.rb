require('pry')
require_relative('models/passenger_list')

passenger1 = PassengerList.new(
  {
    'first_name' => 'Conor',
    'last_name' => 'Wilson',
    'seat' => '1',
    'vegetarian' => 'NO'
  }
)

passenger2 = PassengerList.new(
  {
    'first_name' => 'Ronald',
    'last_name' => 'McPherson',
    'seat' => '2',
    'vegetarian' => 'YES'
  }
)

passenger3 = PassengerList.new(
  {
    'first_name' => 'Jodie',
    'last_name' => 'Donald',
    'seat' => '3',
    'vegetarian' => 'NO'
  }
)

passenger4 = PassengerList.new(
  {
    'first_name' => 'Jessica',
    'last_name' => 'Edwards',
    'seat' => '4',
    'vegetarian' => 'NO'
  }
)

passenger5 = PassengerList.new(
  {
    'first_name' => 'Damian',
    'last_name' => 'Smyth',
    'seat' => '5',
    'vegetarian' => 'NO'
  }
)

passenger1.save()
passenger2.save()
passenger3.save()
passenger4.save()
passenger5.save()
