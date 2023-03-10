Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :posts, only: %i[index show] do
    resources :comments, only: %i[new create]
  end
end
