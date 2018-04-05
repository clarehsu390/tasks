Rails.application.routes.draw do
  
  resources :tasks, defaults: { format: :json }
  resources :donations, defaults: { format: :json}
  resources :shoppings, defaults: { format: :json }

  root "static_pages#root"

end
