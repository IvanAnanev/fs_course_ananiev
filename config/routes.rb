Rails.application.routes.draw do
  root to: "home#index"
  resources :feedbacks, only: %i(new create)
end
