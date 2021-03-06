Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :movies
  root to: "movies#topten"
  resources :ratings
  resources :comments
  resources :categories

  get 'user/:id', to: "users#show", as: :user_profile
  get 'hakkinda', to: "pages#about", as: :about
  get 'iletisim', to: "pages#contact", as: :contact

end
