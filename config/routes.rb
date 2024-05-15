Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  resources :recordings
  get 'recordings/:id/feedback', to: 'recordings#show' # A feedback show page that changes it's personalised message , depending on BM results

  # Defines the root path route ("/")
  # root "posts#index"
end
