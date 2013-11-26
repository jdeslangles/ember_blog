RailsEmberBlog::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  resources :posts, except: [:new, :edit]
  root to: 'application#index' 
end
