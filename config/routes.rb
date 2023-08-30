Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  get "/users/:id", to: "application#custom", as: :user_id
  get "dashboard", to: "pages#dashboard", as: :user_dashboard
  get "lmatch", to: "missions#lmatch", as: :match_landing
  get "rematch", to: "pages#rematch", as: :rematch
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :missions do
    resources :matches, only: [:create, :index]
  end
  resources :matches, only: :show
  # Defines the root path route ("/")
  # root "articles#index"
end
