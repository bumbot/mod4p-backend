Rails.application.routes.draw do
  resources :musics
  resources :playlists
  resources :users
  post '/login', to: 'auth#create'
  get '/get_song', action: "get_song", controller: 'musics'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
