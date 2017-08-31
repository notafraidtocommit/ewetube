Rails.application.routes.draw do
  
  scope '(:locale)' do  
    resources :sheep
    root 'sheep#index'
  end
  
  
end

