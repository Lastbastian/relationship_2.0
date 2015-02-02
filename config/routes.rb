Rails.application.routes.draw do
  root 'welcome#index'
  get 'static/pages/help'
  get 'static/pages/about'
  get 'static/pages/contact'

  resources :users

end