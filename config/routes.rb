Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :newspapers

  resources :notices



  resources :myclas

  resources :products

  resources :myproducts

resources :apis do
  collection do
    get 'returntest'
  end
end

  end