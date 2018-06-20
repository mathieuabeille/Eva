Rails.application.routes.draw do
  resources :salons
  resources :annonceurs
 devise_scope :user do
    get "/sign_in" => "devise/sessions#new", as: "new_user_session" # custom path to login/sign_in
    # post "/sign_in" => "devise/sessions#create", as: "user_session" # custom path to login/sign_in
    delete "/sign_out" => "devise/sessions#destroy", as: "destroy_user_session"
    get "/B21zukt938lama272kutoni" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
    post "/B21zukt938lama272kutoni" => "devise/registrations#create", as: "user_registration" # custom path to login/sign_in
  end

  # Below for all other routes:


  get "/pages/:page" => "pages#show"



  root to: 'annonceurs#new'

    resources :prospects, only: [:create, :index, :destroy, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
