Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :articles do
    resorces :comments
  end

  root 'welcome#index'
end
