Video::Application.routes.draw do
  get "rooms" => "rooms#new"
  get "rooms/show/:id" => "rooms#show", as: :rooms_show
  post "rooms" => "rooms#create"
  root to: 'rooms#new'



end
