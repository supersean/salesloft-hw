Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  namespace :api, defaults: { format: "json" } do
    get :me, to: 'me#me'
    get :users, to: 'managed_users#index'
    get :frequencies, to: 'managed_users#frequency'
  end

  root to: "main#index"
end
