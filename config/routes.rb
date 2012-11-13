Webistrano::Application.routes.draw do
  devise_for :users

  root :to => 'projects#dashboard'

  resources :projects do
    resources :project_configurations
    resources :stages do
      member do
        get :tasks
        get :capfile
        get :resipes
        put :recipes
      end
      resources :stage_configurations
      resources :roles
      resources :deployments do
        collection do
          get :latest
        end
        member do
          post :cancel
        end
      end
    end
  end

  resources :hosts

  resources :recipes do
  end

  resources :users do
    member do
      post :enable
      get :deployments
    end
  end
end
