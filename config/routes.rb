Rails.application.routes.draw do
  root "departments#index"
  resources :departments do
  resources :playgrounds
  end
end
