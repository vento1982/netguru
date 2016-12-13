Rails.application.routes.draw do
  devise_for :users
	root to: "students#index"

  resources :students do
    get :subjects
  end


  resources :teachers

  get 'subjects', to: 'reports#subjects', as: :subjects
end
