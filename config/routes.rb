Quiz::Application.routes.draw do
  devise_for :users
  devise_for :administrators

  root to: "top#index"
  resource :users

  namespace :admin do
    devise_for :administrators
    root to: "top#index"
    resources :administrators
  end
end
