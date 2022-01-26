Rails.application.routes.draw do
  resources :stats
  resources :moves
  resources :types
  resources :pokemons
  resources :abilities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
