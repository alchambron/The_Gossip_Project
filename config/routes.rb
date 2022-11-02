Rails.application.routes.draw do

  get '/', to: 'house#home'
  get '/contact', to: 'house#contact'
  get '/team', to: 'house#team'

  resources :gossips
  resources :users
  resources :cities

end
