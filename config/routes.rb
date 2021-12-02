Rails.application.routes.draw do
#GET/about
get "about", to: "about#index"
#GET/main
root to: "main#index"

#sing_up sign_in logout accounts
get "sign_up", to: "registration#new"
post "sign_up", to: "registration#create"
delete "logout", to: "sessions#destory"

end
