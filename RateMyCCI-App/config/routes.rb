Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'login#login'
  
  get '/classes' => 'classes#classes'
  get '/login' => 'login#login'
end