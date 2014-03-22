Video::Application.routes.draw do
  get "rooms" => "rooms#new"
  get "rooms/show"
  post "rooms" => "rooms#create"
  root to: 'rooms#new'
end
