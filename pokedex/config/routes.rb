Rails.application.routes.draw do
  resources :moves
  resources :types
  resources :stats
  resources :abilities
  resources :pokemons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
