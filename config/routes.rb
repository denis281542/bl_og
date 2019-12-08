Rails.application.routes.draw do
  get 'pages/p1'
  root to: 'pages#p2'
  get 'pages/p3'
  resources :screen_scrapings
  resources :cars
  get 'article/index'
  get 'welcome/parser'
  get 'welcome/hhunter'

  
  resources :articles do
    resources :comments
  end

   'cars#index'
end
