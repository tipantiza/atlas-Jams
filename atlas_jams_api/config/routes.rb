Rails.application.routes.draw do

  # root to: '/'

  resources :users
  resources :genre_categories, only: [:index, :show]
  get '/user/:user_id/recordings/' => "recordings#index"
  delete '/recordings/:recording_id' => "recordings#destroy"
  post '/recordings/:user_id/:name/:url/:description' => "recordings#create"
  get '/all/events' => "events#index"
  delete '/event/:id' => "events#delete"
  get '/performers' => "users#performers"
  # We'll need to change this
  get '/user/:id/events' => "events#userEventsPerformer"
  get '/host/:id/events' => "events#userEventsHost"
  get '/event/:id' => "events#show"
  post '/event' => "events#create"

  get '/all/performers/search' => "users#performer_search"
  get 'all/performers' => "users#all_performer_search"

  get  '/attendee/:user_id/events' => "event_attendees#attendee_events"
  
  get '/spaces/user/:id' => "users#spacesByUser"
  
  get '/attending/:user_id/:event_id' => "event_attendees#show"
  post '/attending' => "event_attendees#create"
  delete '/attending' => "event_attendees#destroy"

  get '/search' => "events#search"

  get '/signup' => 'users#new'

  put '/event/:event_id/performers/:user_id' => "events_performers#update"
  delete '/event/:event_id/performers/:user_id' => "events_performers#destroy"
  
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
