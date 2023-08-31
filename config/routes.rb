Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "profile", to: "pages#profile"
  get "/users/:id", to: "application#custom", as: "user_id"
  get "dashboard", to: "pages#dashboard", as: "user_dashboard"

  get "step2/:id", to: "missions#new_part_two", as: "step_two"
  post "step2/:id", to: "missions#form_update_step_two", as: "update_step_two"

  get "step3/:id", to: "missions#new_part_three", as: "step_three"
  post "step3/:id", to: "missions#form_update_step_three", as: "update_step_three"

  get "edit2/:id", to: "missions#edit_part_two", as: "edit_two"
  get "edit3/:id", to: "missions#edit_part_three", as: "edit_three"
  get "rematch", to: "pages#rematch", as: "rematch"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :missions do
    resources :matches, only: [:create, :index]
  end
  resources :matches, only: :show
  # Defines the root path route ("/")
  get "lmatches/:id", to: "missions#lmatch", as: "match_landing"
  # root "articles#index"
end
