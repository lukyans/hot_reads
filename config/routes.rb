Rails.application.routes.draw do
  root to: "links#index"

  resources :links, only: [:index, :create]
end
