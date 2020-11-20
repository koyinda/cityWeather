module Types
  class CityDetailsType < Types::BaseObject
    field :location, String, null: false
    field :temperature, String, null: false
    field :pressure, String, null: false
    field :humidity, String, null: false
    field :longitude, String, null: false
    field :latitude, String, null: false
    field :sunrise, String, null: false
    field :sunset, String, null: false
  end
end
