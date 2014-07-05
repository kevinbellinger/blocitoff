# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create an admin
admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',

)
admin.skip_confirmation!
admin.save

# Create a member
member = User.new(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld',
)
member.skip_confirmation!
member.save