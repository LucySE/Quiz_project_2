Rails.application.routes.draw do

  # Root path
  root to: 'pages#home'


post '/users/:id' => 'users#show'
  # Create routes for users to create accounts, login and view/edit/delete their profile
  # users     GET    /users(.:format)          users#index
  #           POST   /users(.:format)          users#create
  # new_user  GET    /users/new(.:format)      users#new
  # edit_user GET    /users/:id/edit(.:format) users#edit
  # user      GET    /users/:id(.:format)      users#show
  #           PATCH  /users/:id(.:format)      users#update
  #           PUT    /users/:id(.:format)      users#update
  #           DELETE /users/:id(.:format)      users#destroy
  resources :users

  # Login/logout routes
  get '/login'  => 'session#new'        # showing the login form
  post '/login' => 'session#create'     # form submits to here, performs login, redirects
  delete '/login' => 'session#destroy'  # logout link goes here, perform logout, redirect

  # Create routes for puzzles - DO WE NEED ALL OF THESE ROUTES?
  #   puzzles GET    /puzzles(.:format)          puzzles#index
  #   POST   /puzzles(.:format)          puzzles#create
  # new_puzzle GET    /puzzles/new(.:format)      puzzles#new
  # edit_puzzle GET    /puzzles/:id/edit(.:format) puzzles#edit
  # puzzle GET    /puzzles/:id(.:format)      puzzles#show
  #   PATCH  /puzzles/:id(.:format)      puzzles#update
  #   PUT    /puzzles/:id(.:format)      puzzles#update
  #   DELETE /puzzles/:id(.:format)      puzzles#destroy
  resources :puzzles

  # Create routes for games - DO WE NEED ALL OF THESE ROUTES?
  #   games   GET    /games(.:format)            games#index
  #           POST   /games(.:format)            games#create
  # new_game  GET    /games/new(.:format)        games#new
  # edit_game GET    /games/:id/edit(.:format)   games#edit
  # game      GET    /games/:id(.:format)        games#show
  #           PATCH  /games/:id(.:format)        games#update
  #           PUT    /games/:id(.:format)        games#update
  #           DELETE /games/:id(.:format)        games#destroy
  resources :games

    #  Create route for end of game
    get 'games/:id/gameover' => 'games#gameover'

end
