Rails.application.routes.draw do
  resources :areas
  resources :companies do
    resources :employees, only: [:create]
  end
  get 'companies/index'
  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
