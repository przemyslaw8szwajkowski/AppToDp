namespace :task do
  desc " Destroy all unfinished task :D "
	  task :false => :environment do
	    List.unfinished.destroy_all
	    	puts "all unfinished taks are destroy"
	end
	
	desc "Destroy all finished task :D"
		task :true => :environment do
	    List.done.destroy_all
				puts "all finished taks are destroy"
	end
	
	desc "sum all finished task "
		task :sum => :environment do
			User.find_each do |u|
				user = User.find(id = u.id )
				puts user_point = User.find(id = u.id).point 
				puts list_point = List.joins(:user).where(:user_id => u.id).done.sum(:point)
				user_point.to_i
				list_point.to_i
				sum = user_point + list_point
				user.update(:point => sum )	
		end
			puts "all task sum "
	end

		desc "task to doing"
			task :do_task => [:environment,:sum,:true] do
				puts "done :)"
		end
end