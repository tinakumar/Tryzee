Tryzee::Application.routes.draw do
  resources :results
  resources :searches
  resources :registers
  resources :users


  resources :searches
  #root to: 'products#index'

  #get "register/first_name:string"
  #get "register/last_name:string"
  #get "register/photo_url:string"
  #get "register/location:string"
  get '/registers/new' => 'registers#new', as: 'new_register'
  post '/registers' => 'registers#create', as: 'registers'
  delete '/registers' => 'registers#destroy'
  #get "sessions/new"
  #get "sessions/create"
  #get "sessions/destroy"

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  match '/signout' => 'sessions#destroy', via: :delete

  root :to => 'pages#home'

  match '/how_it_works', to: 'pages#how_it_works'
  match '/about', to: 'pages#about'
  match '/help', to: 'pages#help'
  match '/start', to: 'pages#start'
  match '/home', to: 'pages#home'
  match '/signin', to: 'pages#signin'
  match '/welcome', to: 'pages#welcome'
  match '/search', to: 'pages#search'

  #get "pages/about"

  #get "pages/how_it_works"

  #get "pages/help"

  #get "pages/start"

  # Routes for the Tryal resource:
  # CREATE
  get '/tryals/new', controller: 'tryals', action: 'new', as: 'new_tryal'
  post '/tryals', controller: 'tryals', action: 'create'

  # READ
  get '/tryals', controller: 'tryals', action: 'index', as: 'tryals'
  get '/tryals/:id', controller: 'tryals', action: 'show', as: 'tryal'

  # UPDATE
  get '/tryals/:id/edit', controller: 'tryals', action: 'edit', as: 'edit_tryal'
  put '/tryals/:id', controller: 'tryals', action: 'update'

  # DELETE
  delete '/tryals/:id', controller: 'tryals', action: 'destroy'
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get '/products/new', controller: 'products', action: 'new', as: 'new_product'
  post '/products', controller: 'products', action: 'create'

  # READ
  get '/products', controller: 'products', action: 'index', as: 'products'
  get '/products/:id', controller: 'products', action: 'show', as: 'product'

  # UPDATE
  get '/products/:id/edit', controller: 'products', action: 'edit', as: 'edit_product'
  put '/products/:id', controller: 'products', action: 'update'

  # DELETE
  delete '/products/:id', controller: 'products', action: 'destroy'
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get '/messages/new', controller: 'messages', action: 'new', as: 'new_message'
  post '/messages', controller: 'messages', action: 'create'

  # READ
  get '/messages', controller: 'messages', action: 'index', as: 'messages'
  get '/messages/:id', controller: 'messages', action: 'show', as: 'message'

  # UPDATE
  get '/messages/:id/edit', controller: 'messages', action: 'edit', as: 'edit_message'
  put '/messages/:id', controller: 'messages', action: 'update'

  # DELETE
  delete '/messages/:id', controller: 'messages', action: 'destroy'
  #------------------------------

  # Routes for the Model resource:
  # CREATE
  get '/models/new', controller: 'models', action: 'new', as: 'new_model'
  post '/models', controller: 'models', action: 'create'

  # READ
  get '/models', controller: 'models', action: 'index', as: 'models'
  get '/models/:id', controller: 'models', action: 'show', as: 'model'

  # UPDATE
  get '/models/:id/edit', controller: 'models', action: 'edit', as: 'edit_model'
  put '/models/:id', controller: 'models', action: 'update'

  # DELETE
  delete '/models/:id', controller: 'models', action: 'destroy'
  #------------------------------

  # Routes for the Manufacturer resource:
  # CREATE
  get '/manufacturers/new', controller: 'manufacturers', action: 'new', as: 'new_manufacturer'
  post '/manufacturers', controller: 'manufacturers', action: 'create'

  # READ
  get '/manufacturers', controller: 'manufacturers', action: 'index', as: 'manufacturers'
  get '/manufacturers/:id', controller: 'manufacturers', action: 'show', as: 'manufacturer'

  # UPDATE
  get '/manufacturers/:id/edit', controller: 'manufacturers', action: 'edit', as: 'edit_manufacturer'
  put '/manufacturers/:id', controller: 'manufacturers', action: 'update'

  # DELETE
  delete '/manufacturers/:id', controller: 'manufacturers', action: 'destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create'

  # READ
  get '/categories', controller: 'categories', action: 'index', as: 'categories'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  put '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
