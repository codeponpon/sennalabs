people = [{
  name: 'Rick',
  cars: ['Corvette Z06', 'Lotus Exite S', 'BMW M3']
}, {
  name: 'John',
  cars: ['BMW 320d', 'Mercedes SLK AMG']
}, {
  name: 'Zing',
  cars: ['Toyota Alphard', 'Mercedes Sprinter']
}, {
  name: 'Nan',
  cars: ['Toyota Camry', 'Porshe 911', 'BMW M5', 'Jaguar', 'TukTuk', 'Mini Cooper', 'Honda Jazz']
}]

people.each do |person|
  Person.find_or_create_by!(name: person[:name]) do |user|
    person[:cars].each { |car| user.cars.new(name: car) }
  end
end