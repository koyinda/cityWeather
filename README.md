# README

* Task
Using the OpenWeather JSON REST api https://openweathermap.org/api, create a mini graphql Rails API app that allows:
any user to check the current weather of their city via a graphql query. The response should show the lat/lng of the city and the time of sunrise and sunset
a user to subscribe for daily weather updates via a graphql mutation. This should send the daily updates via email
a user to cancel their daily weather update subscription

The application should isolate key actions using Rails interactors, should use Sidekiq and clockwork to schedule and run background jobs. Call external endpoints with HTTParty and should be well tested using RSpec.

Hosting should happen on Heroku
