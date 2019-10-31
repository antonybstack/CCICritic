Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#login'
  
  get '/classes' => 'classes#classes'
  get '/welcome' => 'welcome#login'
end