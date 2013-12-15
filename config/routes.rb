Wwwha::Application.routes.draw do
  
  root :to => 'welcome#index'

  resources :players

  resources :games
  
  resource :session
  
end
