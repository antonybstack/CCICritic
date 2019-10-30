Rails.application.routes.draw do
  get 'welcome/login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#login'
  
  resources :classes
  
  get "class/classes" => "classes#classes"
end