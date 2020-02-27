# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#test
# coding: utf-8

Product.create!(
	id: '1',
	name: 'いちごケーキ',
	image_id: 'nil',
	genre_id: '1',
	content: '美味しいよ',
	price: '1000',
	selling_status: 'true',
	)