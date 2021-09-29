Rails.application.routes.draw do
  resources :measurements, only: [:index, :create]
  get 'measurements/:id' => 'measurements#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
