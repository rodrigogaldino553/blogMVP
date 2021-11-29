Rails.application.routes.draw do
  devise_for :admins
  # resources :posts # add only[%sei la oq%]
  resources :posts, only: %i[index show edit destroy new create] do
    resources :comments, only: [:create]
  end
  patch '/posts/:id', to: 'posts#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
