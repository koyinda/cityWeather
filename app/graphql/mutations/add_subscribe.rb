# frozen_string_literal: true

module Mutations
  # app/graphql/mutations/add_subscribe
  class AddSubscribe < Mutations::BaseMutation
    # arguments passed to the `resolve` method
    argument :email, String, required: true
    argument :location, String, required: true

    # return type from the mutation
    type Types::SubscribeType

    def resolve(email: nil, location: nil)
      sub = Subscribe.find_by(email: email, location: location.downcase)
      if sub
        raise GraphQL::ExecutionError, ': Not added, the email and location combo already exist'
      else
        response = CityDetails.call(search: location)

        if response.city_details["location"].downcase == location.downcase
          sub = Subscribe.create!(
            email: email,
            location: location.downcase
          )
        else
          raise GraphQL::ExecutionError, ': does not exist'
        end
      end
    end
  end
end