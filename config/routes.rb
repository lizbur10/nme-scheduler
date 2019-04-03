Rails.application.routes.draw do
  resources :markets
  resources :workplace_accounts
  resources :managers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
