# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(title: 'JavaScript Rules', author: 'a genius', status: false)
Book.create(title: 'Computers', author: 'a dork', status: false)
Book.create(title: 'How to Be', author: 'a person', status: false)
