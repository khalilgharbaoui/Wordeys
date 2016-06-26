Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  root 'dashboards#index'
  get 'lists/:id' => 'lists#show'

  resources :lists, except: [:show, :new, :edit] do
    resources :words, except: [:show, :new, :edit]
  end
end
