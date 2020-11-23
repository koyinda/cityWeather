class MailsJob < ApplicationJob
  queue_as :default

  def perform(message)
    # Do something later
    CityDetailsMailer.submission(message).deliver
  end
end
