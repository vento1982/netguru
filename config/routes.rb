Rails.application.routes.draw do
  root to: "students#index"

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects
  
  devise_for :users
 
  resources :students do
    get :subjects
  end

  resources :teachers
  resources :visitors, only: [:index]
  
end
