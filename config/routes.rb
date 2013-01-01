Quiz::Application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: { confirmations: "confirmations" }
  #devise_for :administrators

  root to: "top#index"
  match "wellcome", to: "users#wellcome"
  resource :users
  resource :account_services
  resources :answer_sheets do
    collection do
      get 'mylogs'
    end
  end

  resources :examinations do
    member do
      post 'start_examination'
      put 'complete_examination'
    end
    resources :questions
  end

  resources :questions do
    member do
      post 'answer'
    end
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
