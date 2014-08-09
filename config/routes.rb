Capres::Application.routes.draw do
  get "locations/index"
  get "main/index"
  resources :users
  get "/complaints" => "main#complaints", as: :complaints
  post "/save_complaint" => "main#save_complaint", as: :save_complaint

  # You can have the root of your site routed with "root"
  root 'main#index'

  namespace :admin do
    root 'main#index'
    resources :complaints
  end

  namespace :web do
    root 'main#index'
  end

  namespace :api do
    root 'main#index'
  end
end
