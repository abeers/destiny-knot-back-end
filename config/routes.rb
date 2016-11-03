Rails.application.routes.draw do
  resources :pokemon_abilities, except: [:new, :edit]
  resources :abilities, except: [:new, :edit]
  resources :pokemon_stats, except: [:new, :edit]
  resources :stats, except: [:new, :edit]
  resources :pokemons, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
