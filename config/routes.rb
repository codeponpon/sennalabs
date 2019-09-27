Rails.application.routes.draw do
  resources :cars
  resources :people
  get 'reports(/:type)', to: 'people#reports'
end
