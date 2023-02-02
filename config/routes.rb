Rails.application.routes.draw do
  get 'static_pages/home'
  
  
  devise_for :users
  get 'user', to: "user#show"
  
  resources :books
  root "static_pages#home"
  
  resources :book_reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
