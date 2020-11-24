module Mutations
    class RemSubscribe < Mutations::BaseMutation
      # arguments passed to the `resolve` method
      argument :email, String, required: true
      argument :location, String, required: true
  
      # return type from the mutation
      type Types::SubscribeType
  
      def resolve(email: nil, location: nil)
        sub = Subscribe.find_by(email: email, location: location)
        return {} unless sub
        Subscribe.destroy(sub[:id])
      end
    end
  end