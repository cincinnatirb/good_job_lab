Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/pi_digits", to: "pi_digits#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
