require_relative '../models/pizza'

Pizza.destroy_all
Pizza.create([
  {name: "meaty pie", cheese: true},
  {name: "veggie delight", mushrooms: true},
  {name: "mystery surprise"}  
])