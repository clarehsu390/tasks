Rails.application.routes.draw do
  root to: "tasks#index"
  
  resources :tasks, defaults: { format: :json }
end
