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
	
	desc "sum all finished task "
		task :sum => :environment do
			User.find_each do |u|
				user = User.find(id = u.id )
				@user_point = User.find(id = u.id).point 
				@list_point = List.joins(:user).where(:user_id => u.id).done.sum(:point)
				user.update(:point =>@user_point + @list_point)
				
				puts "all task sum "
		end
	end
		desc "task to doing"
			task :do_task => [:sum,:true] do
				puts "done :)"
		end
end