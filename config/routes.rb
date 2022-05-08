Rails.application.routes.draw do
  resources :records
  resources :entries
  # get 'pages/home'
  root "pages#home"
  devise_for :users
  get "journal", to: "pages#journal"
  get "thoughts", to: "pages#thoughts"
  get "faqs", to: "pages#faqs"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end