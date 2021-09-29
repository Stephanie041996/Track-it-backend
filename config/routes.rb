Rails.application.routes.draw do
<<<<<<< Updated upstream
  resources :transactions
  resources :measurements
=======
  resources :measurements, only: [:index, :show, :create]
  get 'measurements/:id' => 'measurements#show'

>>>>>>> Stashed changes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
