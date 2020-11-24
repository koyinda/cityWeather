require 'httparty'
class CityDetails
  include Interactor
  include HTTParty

  def call
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q='+context.search+'&appid='+ENV["CITYWEATHER_APIKEY"])
    json = JSON.parse(response.body)
    print response.code
    return context.city_details = OpenStruct.new(
      location: json["message"],
      temperature: "Nil",
      pressure: "Nil",
      humidity: "Nil",
      longitude: "Nil",
      latitude: "Nil",
      sunrise: "Nil",
      sunset: "Nil"
     ) unless response.success?
    context.city_details = OpenStruct.new(
      location: json["name"],
      temperature: json["main"]["temp"],
      pressure: json["main"]["pressure"],
      humidity: json["main"]["humidity"],
      longitude: json["coord"]["lon"],
      latitude: json["coord"]["lat"],
      sunrise: json["sys"]["sunrise"],
      sunset: json["sys"]["sunset"]
    )
  end
end
