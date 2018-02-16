Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  #devise_for :users

 

  # resources :users do
  #   collection do
  #     post :webhook
  #   end
  # end

  devise_scope :user do 
    authenticated :user do
      root to: 'clinic/users#home'
    end
    unauthenticated :user do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root "users#index"
  namespace :clinic do
    resources :users, only: [] do
      collection do
        get :home
      end
    end
    resources :users 
    resources :clients, only: [:index] do
      collection do
        get :home
        get :rehab
        get :change
        get :messages
        get :stats
      end 
    end  

    resources :settings, only: [:create] do
      collection do
        get :dashboard
        get :videos
        get :manage_rewards
        get :abc
      end 
    end  

    resources :accounts , only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

            
 
