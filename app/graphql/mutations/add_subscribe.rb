module Mutations
    class AddSubscribe < Mutations::BaseMutation
      # arguments passed to the `resolve` method
      argument :email, String, required: true
      argument :location, String, required: true
  
      # return type from the mutation
      type Types::SubscribeType
  
      def resolve(email: nil, location: nil)
        sub = Subscribe.find_by(email: email, location: location.downcase)
        if sub
          return sub = OpenStruct.new(
            id: "nil",
            email: email,
            location: location+": Not added, the email and location combo already exist"
          )
        else
          response = CityDetails.call(search: location)

          if response.city_details["location"].downcase == location.downcase
            sub = Subscribe.create!(
              email: email,
              location: location.downcase
            )
          else
            return sub = OpenStruct.new(
              id: nil,
              email: email,
              location: location+": does not exist"
            )
          end
        end
      end
    end
  end