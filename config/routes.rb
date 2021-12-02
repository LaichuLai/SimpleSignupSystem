Rails.application.routes.draw do
#GET/about
get "about", to: "about#index"
#GET/main
root to: "main#index"

#sing_up accounts
get "sign_up", to: "registration#new"

end
