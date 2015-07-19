Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :answers, except: [:new, :edit]
      resources :questions, except: [:new, :edit]
      resources :surveys, except: [:new, :edit]
    end
  end

end
