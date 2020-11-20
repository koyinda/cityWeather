module Mutations
    class AddSubscribe < Mutations::BaseMutation
      # arguments passed to the `resolve` method
      argument :email, String, required: true
      argument :location, String, required: true
  
      # return type from the mutation
      type Types::SubscribeType
  
      def resolve(email: nil, location: nil)
        sub = Subscribe.create!(
          email: email,
          location: location
        )
      end
    end
  end