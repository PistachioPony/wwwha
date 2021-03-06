Wwwha::Application.routes.draw do
  
  root :to => 'welcome#index'

  resources :players do
    resources :games, only: [:edit, :update, :show] 
  end

  resources :players_cards, only: [:update]

  resources :games, only: [:new, :create, :edit, :update]
  
  resource :session
  
end
