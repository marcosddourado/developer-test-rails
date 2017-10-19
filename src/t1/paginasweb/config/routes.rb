Rails.application.routes.draw do
  resources :pages
  resources :webpages
  get 'webpages/new'

  get 'webpages/create'

  get 'webpages/update'

  get 'webpages/edit'

  get 'webpages/destroy'

  get 'webpages/index'

  get 'webpages/show'

	root 'webpages#index'
end
