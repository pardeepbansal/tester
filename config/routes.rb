Rails.application.routes.draw do
  resources :questions

  resources :tests do
    resources :questions
  end

  root "questions#index"


end
