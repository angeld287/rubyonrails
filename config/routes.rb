Rails.application.routes.draw do
  get 'propiedades/index'

  resources :propiedades

  root 'propiedades#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
