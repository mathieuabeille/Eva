Rails.application.routes.draw do
  resources :salons
  resources :annonceurs

devise_for :users, skip: [:registrations]
as :user do
  get 'B21zukt938lama272kutoni', to: 'devise/registrations#new', as: :new_user_registration
  post 'B21zukt938lama272kutoni', to: 'devise/registrations#create', as: :user_registration
end






#  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", confirmations: "users/confirmations", passwords: "users/passwords" }, :skip => [:sessions]
# devise_scope :user do
#     get "/sign_in" => "devise/sessions#new", as: "new_user_session" # custom path to login/sign_in
#     post "/sign_in" => "devise/sessions#create", as: "user_session" # custom path to login/sign_in
#     match "/sign_out" => "devise/sessions#destroy", as: "destroy_user_session", :via => Devise.mappings[:user].sign_out_via
#     get "/B21zukt938lama272kutoni" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
#     post "/B21zukt938lama272kutoni" => "devise/registrations#create", as: "user_registration" # custom path to login/sign_in
#   end

  # Below for all other routes:


  get "/pages/:page" => "pages#show"



  root to: 'annonceurs#new'

    resources :prospects, only: [:create, :index, :destroy, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
