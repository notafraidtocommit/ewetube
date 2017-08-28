Rails.application.routes.draw do
  
  resources :sheep
  root 'sheep#index'
  
  
end

