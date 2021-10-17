Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :directors
      resources :pickups
    end
  end

end
