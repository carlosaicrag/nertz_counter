Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games do 
    resources :rounds, only:[:create]
  end
  
  resources :rounds, except:[:create]
end
