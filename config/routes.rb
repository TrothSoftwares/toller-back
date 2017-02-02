Rails.application.routes.draw do
  resources :examtimings
  resources :timings
  resources :examdays
  resources :days
  resources :examschedulesets
  resources :schedulesets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
