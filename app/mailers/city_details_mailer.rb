class CityDetailsMailer < ApplicationMailer
    default from: 'oyindamola.kosemani@gmail.com'
  def submission(message, toWho)
      @message = message
      mail(to: 'oyinda.kosemani@gmail.com', subject: 'City Weather Details for the Day')
    end
  end