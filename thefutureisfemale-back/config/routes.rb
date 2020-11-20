Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :female_characters, only: [ :index, :create, :update ], via: :options
    end
  end

  root to: 'pages#home'
end
