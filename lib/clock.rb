require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'

include Clockwork

module Clockwork
  puts "testing clockwork! do_task"
	every(30.seconds, 'do_task') {
	  `rake task:do_task`
	}
end



# require 'clockwork'
# module Clockwork
#   handler do |job|
#     puts "Running #{job}"
#   end

#   # handler receives the time when job is prepared to run in the 2nd argument
#   # handler do |job, time|
#   #   puts "Running #{job}, at #{time}"
#   # end

#   every(10.seconds, 'frequent.job')
#   every(3.minutes, 'less.frequent.job')
#   every(1.hour, 'hourly.job')

#   every(1.day, 'midnight.job', :at => '00:00')
# end