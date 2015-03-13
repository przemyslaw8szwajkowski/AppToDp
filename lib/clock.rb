require 'clockwork'

require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)


include Clockwork

module Clockwork
  puts "testing clockwork! do_task"
	every(30.seconds, 'do_task') {
	  `rake task:do_task`
	}
end
