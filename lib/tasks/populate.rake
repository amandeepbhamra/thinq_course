namespace :db do
	desc "Populate"
	task :populate => :environment do
		
		100.times { Course.create( title: Faker::Hacker.noun, description: Faker::Lorem.paragraph, video: Faker::Hacker.noun, slideshow: Faker::Hacker.noun, logistics: Faker::Hacker.noun ) }

		100.times { CoursePackage.create( title: Faker::Hacker.noun, description: Faker::Lorem.paragraph, video: Faker::Hacker.noun, slideshow: Faker::Hacker.noun ) }		

		100.times { CourseModule.create( title: Faker::Hacker.noun, description: Faker::Lorem.paragraph, audio: Faker::Hacker.noun, video: Faker::Hacker.noun, slideshow: Faker::Hacker.noun ) }

	end
end