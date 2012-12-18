CourseProject::Application.routes.draw do
  root to: "posts#index"

  resources :postsrails
  

end

