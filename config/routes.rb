Project::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # mount RedactorRails::Engine => '/redactor_rails'
  # devise_for :admins

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  post 'persons', to: 'persons#create'
  get 'persons', to: 'persons#index'
  put 'persons/update', to: 'persons#update'
  get 'persons/password', to: 'persons#password'
  put 'persons/password_update', to: 'persons#password_update'

  get 'unsubscribe', to: 'subscriptions#unsubscribe'
  # post 'unsubscribe', to: 'subscriptions#unsubscribe'

  post 'persons', to: 'persons#subscribe_notifications'
  get 'welcome/index', to: 'persons#unsubscribe_notifications'
  
  # post 'welcome/index', to: 'persons#subscribe'
  # post 'persons', to: 'persons#unsubscribe'

  # get "welcome/index"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Основной ресурс:
    resources :articles do
      resources :comments
    end

    resources :comments do
      resources :comments
    end
    


    resources :subscriptions, only: [:create, :destroy]

    #   post :subscribe
     # get :unsubscribe
      
    #   collection do
    #     patch :unsubscribe_notifications
    #   end
    # end

    # resources :articles do
    #   get :autocomplete_category_name, :on => :collection
    # end

  # Example resource route with options:
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


  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
