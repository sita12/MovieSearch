Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'moviees#index'
  resources :reviews
  resources :moviees
  get 'reviewed' => 'moviees#reviewed'
  get 'profile' => 'moviees#profile'
end
