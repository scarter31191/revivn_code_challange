Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :directors do
        resources :pickups
      end
    end
  end

end
