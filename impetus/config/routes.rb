Rails.application.routes.draw do
  resources :pictures
  resources :quotes
  resources :users

  # get "quotes", to: "quotes#generic_index"
end
