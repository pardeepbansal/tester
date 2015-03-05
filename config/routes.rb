Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'qt/index'

  resources :questions

  resources :tests do
    resources :questions
  end

  root "questions#index"


  #save and next route
  post 'createquestion' , to: 'qt#save_and_next' , as: :createquestion

  get 'newquestion/:test_id' => "qt#new" , as: :newquestion

end
