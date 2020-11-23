Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  get 'mail/new'

  resources :mail
  root 'mail#new'

  post "/graphql", to: "graphql#execute"

  post 'mail/message', to: "mail#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
