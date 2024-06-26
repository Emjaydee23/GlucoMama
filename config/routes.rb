Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'recipes/index'
  devise_for :users


  # Homepage
  root to: "pages#home"

  # current_user.clinician? == true ? root to: "pages#clinician_dashboard" :  root to: "pages#home"


  # Meals/Recipe page
  get '/meals/breakfast', to: 'meals#breakfast', as: 'breakfast'
  get '/meals/lunch', to: 'meals#lunch', as: 'lunch'
  get '/meals/snacks', to: 'meals#snacks', as: 'snacks'
  get '/meals/dinner', to: 'meals#dinner', as: 'dinner'
  resources :meals, only: [:index, :show]

   # get '/meals/:id', to: 'meals#show', as: 'meal'




  # User Dashboard
  resources :recordings
  get "dashboard", to: "pages#dashboard"

  # Clinician Dashboard
  get 'clinician_dashboard', to: 'pages#clinician_dashboard'
  get 'dashboard/patients/:id', to: 'pages#show', as: :patient_profile
  # get 'dashboard/patients/:id/chatroom', to: 'pages#show' , as: :chatroom

  get 'recordings/:id/feedback', to: 'recordings#feedback', as: :feedback
  # May get deleted as it gets moved to the dashboard
  get 'recordings/:id', to: 'recordings#new'
  post 'recordings/:id', to: 'recordings#create'
  get 'recordings/:id', to: 'recordings#edit'
  # get 'recordings', to: 'recordings#index', as: :search # This is for the searchbar - get request for items (bloods and meals) that match a certain condition (i.e. the date user input)
  # get 'recordings/:id/edit', to: 'recordings#edit' # Edit your blood glucose entry if user had made a mistake
  patch 'recordings/:id', to: 'recordings#update' # Update your entry, given your details that were previously there( present in the form), to change
  delete 'recordings/:id', to: 'recordings#destroy' # Delete your BM entry


  # Chatroom
  # get 'chatroom/:consultation_id', to: 'chatrooms#index'
  resources :chatrooms, only: [:show] do
    resources :messages , only: [:create]
  end

  # resources :users do
  #   post 'create_chat', on: :member
  #   resources :chatrooms, only: [:index, :show] do
  #     resources :messages, only: [:create]
  #   end
  # end





end
