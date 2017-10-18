Rails.application.routes.draw do
  get 'webpages/new'

  get 'webpages/create'

  get 'webpages/update'

  get 'webpages/edit'

  get 'webpages/destroy'

  get 'webpages/index'

  get 'webpages/show'

  resources :webpages

	root 'webpages#index'
end
