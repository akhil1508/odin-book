Rails.application.routes.draw do
  get 'inverse_friensdships/new'

  get 'inverse_friensdships/create'

  get 'inverse_friensdships/destroy'

  devise_for :users
  root to: 'users#home'
  get 'users/index'
  resources 'users'
  resources 'friendships'
  post '/friend-requests', to: 'inverse_friendships#create'
  get '/friend-requests', to: 'inverse_friendships#index' 
  resources 'posts'
  resources :users do
    resources :posts 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html dude you seriously did a goddamn typo?
end
# now we actually handle the info with logic in the controller. race you to the controller. dude c'mon if you don't wanna race at least come slowly but come to the controller.
