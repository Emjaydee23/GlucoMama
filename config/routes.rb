Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'recipes/index'
  resources :recordings
  devise_for :users
  root to: "pages#home"


  # For all users
  get "dashboard", to: "pages#dashboard"
  get 'meals', to: 'meals#index'


  resources :recordings
  get 'recordings/:id/feedback', to: 'recordings#show', as: :feedback # A feedback show page that changes it's personalised message , depending on BM results
  get 'recordings', to: 'recordings#index', as: :search # This is for the searchbar - get request for items (bloods and meals) that match a certain condition (i.e. the date user input)
  # Defines the root path route ("/")
  # root "posts#index"

  # For the clinician only!- Have to validate somehow
  get 'dashboard/patients/:id', to: 'pages#show', as: :patient_profile
  get 'dashboard/patients/:id/chatroom', to: 'pages#show' , as: :chatroom
end
