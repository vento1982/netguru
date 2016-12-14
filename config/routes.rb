Rails.application.routes.draw do
  devise_for :users
  root to: "students#index"
 
  resources :students do
    get :subjects
  end

  resources :teachers do
  	get :subjects
  end
  
  resources :visitors, only: [:index]

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects
end
