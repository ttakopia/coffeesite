# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sample = Art.create!(storename: "shohei")
sample.images = [
	Rails.root.join("db/image/1.jpg").open,
	Rails.root.join("db/image/2.jpg").open,
	Rails.root.join("db/image/3.jpg").open,
	Rails.root.join("db/image/4.jpg").open,
	Rails.root.join("db/image/5.jpg").open,
	Rails.root.join("db/image/6.jpg").open,
	Rails.root.join("db/image/7.jpg").open
]
sample.save!