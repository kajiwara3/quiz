Quiz::Application.routes.draw do
  #devise_for :users
  devise_for :users, :controllers => { :confirmations => "confirmations" }
  #devise_for :administrators

  root to: "top#index"
  resource :users
  match "wellcome", to: "users#wellcome"

  namespace :admin do
    devise_for :administrators
    root to: "top#index"
    resources :administrators
    resources :users
  end
end
