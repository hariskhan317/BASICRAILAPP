Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "home/index" => "home#index"

  get "home/getQueryStringParams" => "home#getQueryStringParams"
  get "home/passingVar" => "home#passingVar"

  get "home/passingTime" => "home/passingTime"
end
