Rails.application.routes.draw do
  root to:"books#index"
  get "/new", to:"books#new"
  post "/create", to:"books#create"
  delete "/books/:id", to:"books#destroy"
  get "/books/:id/edit",to:"books#edit"
  patch "/books/:id",to:"books#update"
  get "/ranks/:id", to:"ranks#show"
end
