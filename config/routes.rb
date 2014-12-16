Rails.application.routes.draw do
  root 'dashboard#index'
  resources :login, only: [:new, :create]
  delete '/sign_out' => 'login#destroy', as: :sign_out
end
