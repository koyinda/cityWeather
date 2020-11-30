# frozen_string_literal: true

module Types
  # app/controllers/graphql_controller
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false, description: 'An example field added by the generator'
    def test_field
      'Hello World!'
    end

    field :subscribe,
          [Types::SubscribeType],
          null: false,
          description: 'hopefully this works'
    def subscribe
      Subscribe.all
    end

    description 'Returns lat/lng of the city and the time of sunrise and sunset'
    field :findCity, Types::CityDetailsType, null: false do
      # Types::CityDetailsType
      argument :search, String, required: true
    end
    def findCity(search)
      response = CityDetails.call(search: search[:search])
      response.city_details
      unless response.city_details['location'].downcase == search[:search].downcase
        raise GraphQL::ExecutionError, 'Location not found'
      end
    end
  end
end
