Rails.application.routes.draw do
  get 'user/index'
  devise_for :users

  root to: 'projects#index'
  resources :projects do
    member do
      get    'assign_developer'
      get    'assign_sqa'
      get    'add_developer'
      delete 'remove_developer'
      post   'add_sqa'
      delete 'remove_sqa'
    end
  end

  resources :bugs do
    member do
      patch 'update_status'
    end
  end
end
