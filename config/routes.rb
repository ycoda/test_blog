Rails.application.routes.draw do
  devise_for :users
  resources :users, except: :index, shallow: true do
    resources :blogs do
      resources :entries do
        resources :comments, except: [:index, :show]
      end
    end
  end

  resource :sessions, only: [:new, :create, :destroy]
  root to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
