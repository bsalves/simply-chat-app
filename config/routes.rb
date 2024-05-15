Rails.application.routes.draw do
  root 'chat#index'
  mount ActionCable.server => '/cable'
end
