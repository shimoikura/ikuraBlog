Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs do
  resources :replies
end
post '/blogs/:id/increment', to: 'blogs#increment', as: 'like'

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
