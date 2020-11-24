class CityDetailsMailer < ApplicationMailer
    default from: 'oyindamola.kosemani@gmail.com'
  def submission(message, toWho)
      @message = message
      mail(to: toWho, subject: 'City Weather Details for the Day')
    end
  end