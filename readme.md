# Seeding a Database

## Why is Seeding Useful?

Seeding a database is useful for development. It saves time by populating the application with some data for a development environment.

## Rake Tasks

ActiveRecord has a rake command `rake db:seed` that will run the file `db/seeds.rb`. Try it and see what error you get; the first step will be to create this file.

## Seed File

Here's an example `seeds.rb` file that you can find in the project.

**seeds.rb**

```ruby
require_relative '../models/pizza'

Pizza.destroy_all
Pizza.create([
  {name: "meaty pie", cheese: true},
  {name: "veggie delight", mushrooms: true},
  {name: "mystery surprise"}  
])
```

Here we wipe our database clean with `.destory_all` and then create a collection of pizzas with `.create` and passing in an array of objects.

>Note: at the top of the file we must require the `Pizza` model in order to use it in our file.