Rails.application.routes.draw do
  get 'profil/:user', to: 'profil#show'
  get 'gossip/:id', to: 'gossip#show'
  get '/', to: 'static_pages#home'
  get '/team', to: 'static_pages#team'

  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
