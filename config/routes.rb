Rails.application.routes.draw do
  # get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  scope '/our' do
    get 'wedding' => 'welcome#wedding', as: :friendly_wedding
    get 'anniversary' => 'welcome#anniversary', as: :friendly_anniversary
    get 'corporate' => 'welcome#corporate', as: :friendly_corporate
    get 'advantages' => 'welcome#advantages', as: :friendly_advantages
    get 'prom' => 'welcome#prom', as: :friendly_prom
  end

  scope '/halls' do
    get 'egyptian' => 'halls#egyptian_hall', as: :friendly_egyptian_hall
    get 'mirror' => 'halls#mirror_hall', as: :friendly_mirror_hall
  end

  get 'feedback' => 'feedback#index', as: :friendly_feedback
  get 'recommendations' => 'recommendations#index', as: :friendly_recommendations
  get 'contacts' => 'contacts#index', as: :friendly_contacts
  get 'gallery' => 'gallery#index', as: :friendly_gallery

  scope '/facilities' do
    get 'order' => 'service#order', as: :friendly_order
    get 'reservation' => 'service#reservation', as: :friendly_reservation
    get 'serving' => 'service#serving', as: :friendly_serving
    get 'service' => 'service#service', as: :friendly_service
  end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
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
