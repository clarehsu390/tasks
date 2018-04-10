Rails.application.routes.draw do
  
  resources :tasks, defaults: { format: :json }

  root "static_pages#root"

end
