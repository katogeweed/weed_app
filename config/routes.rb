Rails.application.routes.draw do
  get "users/new"
  get "welcome/index"
  post "welcome/create", to: "welcome#create"
end
