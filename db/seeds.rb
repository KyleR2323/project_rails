require 'faker'
require 'csv'

Dog.destroy_all
Country.destroy_all
Group.destroy_all
Section.destroy_all

csv_file = Rails.root.join('db/dog_breed.csv')
csv_data = File.read(csv_file)

dogs = CSV.parse(csv_data, headers: true, encoding: 'utf-8')

# Create additional Faker-generated records
357.times do
  Dog.create(
    sound: Faker::Creature::Dog.sound,
    meme_phrase: Faker::Creature::Dog.meme_phrase,
    age: Faker::Number.between(from: 6, to: 25),
    size: Faker::Creature::Dog.size,
    coat_length: Faker::Creature::Dog.coat_length
  )
end

# Loop through CSV rows
dogs.each do |dog|
  country = Country.find_or_create_by(name: dog['country'])
  group = Group.find_or_create_by(name: dog['group'])
  section = Section.find_or_create_by(name: dog['section'])

  Dog.create(
    name: dog['name'],
    url: dog['url'],
    image: dog['image'],
    pdf: dog['pdf'],
    country: country,
    group: group,
    section: section,
    sound: Faker::Creature::Dog.sound,
    meme_phrase: Faker::Creature::Dog.meme_phrase,
    age: Faker::Number.between(from: 6, to: 25),
    size: Faker::Creature::Dog.size,
    coat_length: Faker::Creature::Dog.coat_length
  )
end

puts "Created #{Group.count} groups"
puts "Created #{Section.count} sections"
puts "Created #{Country.count} countries"
puts "Created #{Dog.count} dogs"
