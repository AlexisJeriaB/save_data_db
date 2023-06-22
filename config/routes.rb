Rails.application.routes.draw do
  get 'documentary_films/index'
  get 'documentary_films/new'

  get 'series/index'
  get 'series/new'
 
  get 'movies/index'
  get 'movies/new'


  post 'documentary_films',       to:"documentary_films#create"
  post 'series',                  to:"series#create"
  post 'movies',                  to:"movies#create"
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "series#index"
end
