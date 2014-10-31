Rails.application.routes.draw do
  root 'welcome#index'
  match '/contact', to: 'contacts#new', via: 'get'
  match '/portfolio', to: 'welcome#portfolio', via: 'get'
  resources "contacts", only: [:new, :create]
end
