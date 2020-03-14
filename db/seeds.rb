# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Clean database...'

User.destroy_all
Card.destroy_all
Game.destroy_all

puts 'DB cleaned'

puts 'creating a user...'

steph = User.new(
  username: "Steph",
  email: "stephane@hotmail.",
  password: "password"
  )

puts 'user created !'

puts 'creating cards ...'

count = 0
number = 0
points = 0
while count < 104
  count += 1
  number += 1

  case number
  when 5 then
    points = 2
  when 15 then
    points = 2
  when 25 then
    points = 2
  when 35 then
    points = 2
  when 45 then
    points = 2
  when 65 then
    points = 2
  when 75 then
    points = 2
  when 85 then
    points = 2
  when 95 then
    points = 2
  when 10 then
    points = 3
  when 20 then
    points = 3
  when 30 then
    points = 3
  when 40 then
    points = 3
  when 50 then
    points = 3
  when 60 then
    points = 3
  when 70 then
    points = 3
  when 80 then
    points = 3
  when 90 then
    points = 3
  when 100 then
    points = 3
  when 11 then
    points = 5
  when 22 then
    points = 5
  when 33 then
    points = 5
  when 44 then
    points = 5
  when 66 then
    points = 5
  when 77 then
    points = 5
  when 88 then
    points = 5
  when 99 then
    points = 5
  when 55 then
    points = 7
  else
    points = 1
  end

  card = Card.new(number: number, points: points, selected: false)
  puts 'card created'
  card.save
end

puts 'all cards are created !'

Card.all.each do |card|
  puts "- #{card.number}. #{card.points}"
end
