CourseProject::Application.routes.draw do
  get 'register', to: 'users#new', as: 'register'
  root to: "posts#index"
  resources :users, only:[:create]
  resources :posts, only: [:show, :new, :create] do
  	resources :comments, only: [:create]
  	resources :votes, only: [:create]
  end
end

