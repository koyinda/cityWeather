module Types
  class SubscribeType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :location, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
