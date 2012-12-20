Quiz::Application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { confirmations: "confirmations" }
  #devise_for :administrators

  root to: "top#index"
  match "wellcome", to: "users#wellcome"
  resource :users
  resources :examinations do
    resources :questions
  end

  namespace :admin do
    #devise_for :administrators, controllers: { sessions: 'admin/sessions' }
    devise_for :administrators, :controllers => { :sessions => "admin/sessions" }
    root to: "top#index"
    resources :administrators
    resources :users
    resources :examinations do
      resources :questions
    end
    resources :questions do
      resources :question_choices
    end
  end
end
