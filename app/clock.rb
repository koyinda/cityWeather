require 'clockwork'

  # Require the full rails environment if needed
  require './config/boot'
  require './config/environment'

  include Clockwork

every(1.day, 'Send notifications', :at=>"00:01"){
    `rake SendDailyWorker:perform`
}