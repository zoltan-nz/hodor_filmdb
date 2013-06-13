# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Participant.create!(name: 'John Snow')
Participant.create!(name: 'Hodor')

Role.create!(name: 'Writer')
Role.create!(name: 'Director')

Film.create!(title: 'Game of Thrones', participant_ids: [1], role_ids: [1])
Film.create!(title: 'Game of Thrones 2', participant_ids: [2], role_ids: [2])
