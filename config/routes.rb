Rails.application.routes.draw do
  get 'pages/p1'
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

  root 'cars#index'
end
