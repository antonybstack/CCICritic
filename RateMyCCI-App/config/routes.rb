Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # tip: routes goes to controller and goes to a specific action
  # how to make new controller and action: rails generate controller Welcome index
  
  root 'login#login'
  # get 'route' => 'controller'#'action'
  get '/classes' => 'classes#classes'
  get '/login' => 'login#login'
  get '/review' => 'review#index'
  
  resources :review
end