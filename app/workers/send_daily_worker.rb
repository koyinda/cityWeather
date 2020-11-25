class SendDailyWorker
  include Sidekiq::Worker
  #include Sidetiq::Schedulable # new line includes the Schedulable module from Sidetiq
  #recurrence { daily } # makes the worker run daily
  def perform
    Subscribe.all.each do |subs|
      # puts subs.email
      # puts subs.location
      # response = CityDetails.call(search: subs.location)
      # CityDetailsMailer.submission(response.city_details, subs.email).deliver
      CityDetailsMailer.submission({}, 'oyinda.kosemani@gmail.com').deliver

    end
  end
end
