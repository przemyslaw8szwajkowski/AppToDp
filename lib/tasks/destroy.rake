namespace :task do
  desc " Destroy all unfinished task :D "
  task :false => :environment do
    List.where(:status => false).destroy_all
    	puts "all unfinished taks are destroy"
	end
	desc "Destroy all finished task :D"
	task :true => :environment do
    List.where(:status => true).destroy_all
			puts "all finished taks are destroy"
	end
end