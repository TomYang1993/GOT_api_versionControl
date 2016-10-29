Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/characters' => 'characters#index'
      get '/characters/:id' => 'characters#show'
      post '/characters' => 'characters#create'
      delete '/characters/:id' => 'characters#destroy'
    end
    namespace :v2 do
      get '/characters' => 'characters#index'
      get '/characters/:id' => 'characters#show'
      post '/characters' => 'characters#create'
    end
  end
  get '/' => 'homes#index'
end
