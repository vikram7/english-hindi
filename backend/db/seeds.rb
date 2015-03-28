# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(part_of_speech: "noun")
Category.create(part_of_speech: "verb")
Category.create(part_of_speech: "adjective")

Meaning.create(text: "squirrel", category_id: Category.find_by(part_of_speech: "noun").id)
Meaning.create(text: "love", category_id: Category.find_by(part_of_speech: "noun").id)
Meaning.create(text: "to love", category_id: Category.find_by(part_of_speech: "verb").id)
