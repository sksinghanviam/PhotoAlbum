Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'dashboard/index'
    root 'dashboard#index'
  end
  resources :albums do 
    member do
      delete 'delete_picture', to: "albums#delete_picture"
    end
  end
  root to: 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
