require 'faker'
require 'csv'

CSV.open("customers.csv", "wb") do |csv|
	(1..48).each do |id|
		csv << [
			rand(1000000),
			Faker::Name.first_name,
			Faker::Name.last_name,
			Faker::Internet.email,
			Faker::Address.street_address,
			Faker::Address.city,
			Faker::Address.state,
			Faker::Address.zip_code,
			Faker::PhoneNumber.cell_phone,
			"",
			"",
			"",
			"This is fake"
		]
	end
end