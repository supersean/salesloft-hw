Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  namespace :api, defaults: { format: "json" } do
    get :me, to: 'me#me'
    get :users, to: 'managed_users#index'
    get :letter_frequencies, to: 'managed_users#letter_frequencies'
    get :duplicates, to: 'managed_users#duplicates'
  end

  root to: "main#index"
end
