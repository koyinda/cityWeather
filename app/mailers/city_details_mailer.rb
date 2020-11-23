class CityDetailsMailer < ApplicationMailer
    default from: 'oyindamola.kosemani@gmail.com'
    CONTACT_EMAIL = 'oyinda.kosemani@gmail.com'
  def submission(message)
      @message = message
      mail(to: CONTACT_EMAIL, subject: 'City Weather Details for the Day')
    end
  end