Rails.application.routes.draw do
  root to: "body_data#new"
  resources :body_data, only: [:create, :destroy]

end
