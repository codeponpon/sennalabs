# Rails Developer questions

* Question #1 Super Basic

Create a Github repository and create a new rails project.

* Question #2 Create a Model, View and Controller for People

After you are finished, users should be able to create, update, view and delete people via web interface. ​Note:​ ​For this question, we primarily care about functionality not looks. But if you want to make it look nice, then that will bonus points that could result in a higher salary offer.

* Question #3 Create a Model, View and Controller for Cars

Cars are owned by 1 person. After you are finished, users should be able to create, update, view and delete cars via web interface. 

*Note: For this question, we primarily care about functionality not looks. But if you want to make it look nice, then that will bonus points that could result in a higher salary offer.*

* Question #4 Create a report that displays the following data in a table:

*Note: For this question, we primarily care about functionality not looks. But if you want to make it look nice, then that will bonus points that could result in a higher salary offer.*
Person’s name, Car Example:
Rick, Corvette Z06
Rick, Lotus Exite S
Rick, BMW M3
John, BMW 320d
John, Mercedes SLK AMG Zing, Toyota Alphard
Zing, Mercedes Sprinter Nan, Toyota Camry Nan, Porshe 911
Nan, BMW M5
Nan, Jaguar
Nan, TukTuk Nan, Mini Cooper Nan, Honda Jazz

* Question #5 Create a report that displays the following data in a table:
*Note: For this question, we primarily care about functionality not looks. But if you want to make it look nice, then that will bonus points that could result in a higher salary offer.*
Person’s name, number of cars owned
Example: Rick, 3
Zing, 2 Nan, 7 John, 2

* Question #6 Create an API endpoint for the reports above

Design and create and API endpoint(s) for the reports you made above and have them return JSON format.

# Standard Backend Developer Questions

* Question #1 - Warm Up
```ruby
def hello
  "Hello #{yield}"
end
```
* Question #2 - Junior Level
```ruby
def csv_sorting(csv_file)
  file = CSV.read csv_file, headers: true
  file.sort_by{|row| row[1] }.each do |row|
    pp [row[0], row[1]].join
  end
end
```

* Question #3 - Junior Level

```ruby
def lucky(num)
  return 'Number is invalid' if num.to_s.size < 6

  lucky_number = num.to_s.last(2)
  add_digit = []
  (2..(num.to_s.size - lucky_number.size)).each{|z| add_digit << 0 }

  lucky_numbers = []
  (0..9).each {|i| lucky_numbers << "#{add_digit.join}#{i}#{lucky_number}"  }
  lucky_numbers
end
```

* Question #4 - Junior to Mid Level

```ruby
def lotto
  numbers = []
  (0..(10**6-1)).each do |i|
    zero = []
    (6 - i.to_s.size).times{zero << 0}
    zero << i
    numbers << zero.join
  end
  numbers
end
```

* Question #5 Mid Level

```ruby
test "should return hello with any input data" do
  say = hello{'World'}
  assert test.eql?('hello World'), "Return Hello World"
end

test "should sorting the lastname" do
  people = csv_sorting('people.csv')
  assert people.first.split(',').last.eql?('Baggins')
  assert people.last.split(',').last.eql?('Woods')
end

test "should show last two digit prepending 0 - 9" do
  numbers = lucky(120888)
  assert numbers.first.eql?('000088')
  assert numbers.last.eql?('000988')
end
```

* Question #6 Mid Level

```sql
SELECT people.name, cars.name as car_name FROM "people" INNER JOIN "cars" ON "cars"."person_id" = "people"."id"
SELECT COUNT(*) AS count_all, people.name AS people_name FROM "people" INNER JOIN "cars" ON "cars"."person_id" = "people"."id" GROUP BY people.name
SELECT "people".* FROM "people" INNER JOIN "cars" ON "cars"."person_id" = "people"."id" GROUP BY people.id HAVING (COUNT(person_id) > 2)
```
