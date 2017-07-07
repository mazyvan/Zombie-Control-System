Rails.application.routes.draw do
  
  devise_for :admins, controllers: { sessions: 'admins/sessions' }
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  resources :zombies do
    resources :brains
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "zombies#index"
end
