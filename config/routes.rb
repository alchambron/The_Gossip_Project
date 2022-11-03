Rails.application.routes.draw do
  resources :comments

  get '/', to: 'house#home'
  get '/contact', to: 'house#contact'
  get '/team', to: 'house#team'


  resources :gossips do
    resources :comments
  end

  resources :users
  resources :cities

end
