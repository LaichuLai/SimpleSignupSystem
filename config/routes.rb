Rails.application.routes.draw do

#GET/main
root to: "main#index"

#GET/about
get "about", to: "about#index"

#sing_up 
get "sign_up", to: "registration#new"
post "sign_up", to: "registration#create"

#sign_in
get "sign_in", to: "sessions#new"
post "sign_in", to: "sessions#create"

#logout
delete "logout", to: "sessions#destory"

#editing password
get "password", to: "passwords#edit", as: :edit_password
patch "password", to: "passwords#update"

end
