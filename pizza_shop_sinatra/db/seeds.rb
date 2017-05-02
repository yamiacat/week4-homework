require_relative('../models/pizza')
  Pizza.delete_all()


pizza1 = Pizza.new({
  "first_name" => "Walter",
  "last_name" => "White",
  "topping" => "Pepperoni",
  "quantity" => 1
})

pizza2 = Pizza.new({
  "first_name" => "Jesse",
  "last_name" => "Pinkman",
  "topping" => "Italian Sausage",
  "quantity" => 12
})

pizza3 = Pizza.new({
  "first_name" => "Gus",
  "last_name" => "Fring",
  "topping" => "Veneziana",
  "quantity" => 1
})

pizza1.save
pizza2.save
pizza3.save
