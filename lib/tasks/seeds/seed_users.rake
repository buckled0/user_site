namespace :seed_users do
	desc 'Seed 100 users'
	task users: :environment do
		puts 'Seeding Users'
		(1..100).each do |i|
			User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
		end
		puts 'Seed done'
	end
end