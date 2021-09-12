Rails.application.routes.draw do
  post 'logout' => 'user_sessions#destroy', :as => :logout
  root :to => 'users#index'
  resources :users
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
end
