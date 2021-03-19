Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resoures :tasks
end
