Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'pages#test'

  get 'cars/index'
  get 'pages/p2'
  get 'pages/p3'
  get 'parser/parser'

  resources :screen_scrapings
  resources :cars
  get 'article/index'
  get 'welcome/parser'
  get 'welcome/hhunter'

  
  resources :articles do
    resources :comments
  end
end
