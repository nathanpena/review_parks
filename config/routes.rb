Rails.application.routes.draw do
  resources :playgrounds
  root "playgrounds#index"
end
