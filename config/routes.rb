Video::Application.routes.draw do
  get "rooms" => "rooms#new"
  get "rooms/show"
  post "rooms" => "rooms#create"
  # resources :rooms
end
