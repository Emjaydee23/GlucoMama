Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'recipes/index'
  devise_for :users
  root to: "pages#home"


  # Dashboard For all users
  get "dashboard", to: "pages#dashboard"

  # Meals
  get 'meals', to: 'meals#index'


  # All about BM recordings
  resources :recordings

  # get 'recordings/:id', to: 'recordings#new', as: :new_recording -> to rename it so can rediect to edit form when click the button
  post 'recordings/:id', to: 'recordings#create'
  # get 'recordings/:id', to: 'recordings#edit', as: :edit_recording
  get 'recordings/:id/feedback', to: 'recordings#show', as: :feedback # A feedback show page that changes it's personalised message , depending on BM results
  get 'recordings', to: 'recordings#index', as: :search # This is for the searchbar - get request for items (bloods and meals) that match a certain condition (i.e. the date user input)
  # get 'recordings/:id/edit', to: 'recordings#edit', as: :edit_recording # Edit your blood glucose entry if user had made a mistake
  patch 'recordings/:id', to: 'recordings#update' # Update your entry, given your details that were previously there( present in the form), to change
  delete 'recordings/:id', to: 'recordings#destroy' # Delete your BM entry

  # Defines the root path route ("/")
  # root "posts#index"

  # For the clinician only!- Have to validate somehow
  get 'dashboard/patients/:id', to: 'pages#show', as: :patient_profile
  get 'dashboard/patients/:id/chatroom', to: 'pages#show' , as: :chatroom


end
