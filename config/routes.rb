Rails.application.routes.draw do
  resources :team_members, except: [:new, :edit]
  resources :teams, except: [:new, :edit]
  resources :type_efficacies, only: [:index, :show]
  resources :pokemon_types, only: [:index, :show]
  resources :types, only: [:index, :show]
  resources :pokemon_abilities, only: [:index, :show]
  resources :abilities, only: [:index, :show]
  resources :pokemon_stats, only: [:index, :show]
  resources :stats, only: [:index, :show]
  resources :pokemons, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
