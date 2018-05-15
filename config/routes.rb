Rails.application.routes.draw do
  resources :users

  mount ActionCable.server, at: '/cable'
end
