class SendDailyWorker
  include Sidekiq::Worker
  def perform
    message = 'asdf;lkj'
    CityDetailsMailer.submission(message).deliver
  end
end
