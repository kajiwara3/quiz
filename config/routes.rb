Quiz::Application.routes.draw do
  root to: "top#index"
  resource :users

  namespace :admin do
    root to: "top#index"
    resources :administrators
  end
end
