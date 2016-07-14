Rails.application.routes.draw do
  root to: "candidates#home"

  resources :clients
  resources :job_ads
  resources :applications
  resources :candidates
  resources :users
  resources :sessions

end 
