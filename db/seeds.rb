# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'United States')
Country.create(name: 'Israel')
Country.create(name: 'Saudi Arabia')
Country.create(name: 'South Korea')
Country.create(name: 'Iran')
Country.create(name: 'Brazil')
Country.create(name: 'Japan')
Country.create(name: 'United Kingdom')
Country.create(name: 'India')
Country.create(name: 'Germany')
Country.create(name: 'Russia')
Country.create(name: 'China')

WorldLeader.create(name: 'Benjamin Netanyahu', country_id: 2)
WorldLeader.create(name: 'Park Geun-hye', country_id: 4)
WorldLeader.create(name: 'Ayatollah Khamenei', country_id: 5)
WorldLeader.create(name: 'King Salman', country_id: 3)
WorldLeader.create(name: 'Michel Temer', country_id: 6)
WorldLeader.create(name: 'Shinzo Abe', country_id: 7)
WorldLeader.create(name: 'Francois Hollande', country_id: 7)
WorldLeader.create(name: 'Theresa May', country_id: 8)
WorldLeader.create(name: 'Narendra Modi', country_id: 9)
WorldLeader.create(name: 'Angela Merkel', country_id: 10)
WorldLeader.create(name: 'Vladimir Putin', country_id: 11)
WorldLeader.create(name: 'Xi Jinping', country_id: 12)
WorldLeader.create(name: 'Donald Trump', country_id: 1)
