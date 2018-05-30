Rails.application.routes.draw do
  get 'away_riders/index'
  get 'home_riders/index'
  get 'homeriders/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'meetings#index'
  resources :meetings do
    resources :home_riders
    resources :away_riders
  end
  
  resources :races
end
