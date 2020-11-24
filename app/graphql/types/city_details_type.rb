module Types
  class CityDetailsType < Types::BaseObject
    field :location, String, null: true
    field :temperature, String, null: true
    field :pressure, String, null: true
    field :humidity, String, null: true
    field :longitude, String, null: true
    field :latitude, String, null: true
    field :sunrise, String, null: true
    field :sunset, String, null: true
  end
end
