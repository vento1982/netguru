Rails.application.routes.draw do
  root to: "students#index"

  get 'subjects', to: 'reports#subjects', as: :subjects
  
  devise_for :users
 
  resources :students do
    get :subjects
  end

  resources :teachers
  resources :visitors ,only: [:index]
end
