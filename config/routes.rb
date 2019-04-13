Rails.application.routes.draw do
  root to: 'project#index'
  resources :project
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
