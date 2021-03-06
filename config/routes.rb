MassDebate::Application.routes.draw do

  get "friends/create"

  get "friends/destroy"

  match "/" => "users#index"
  match "/user" => "users#index"
  match "/user/home" => "users#home"
  match "/user/register" => "users#register"
  match "/user/login" => "users#login"
  match "/user/logout" => "users#logout"
  match "/user/profile/:debateName" => "users#profile"
  match "user/editProfile" => "users#editProfile"
  match "user/editPicture" => "users#editPicture"
  match "user/help" => "users#help"
  match "user/privacySettings" => "users#privacySettings"
  match "user/search" => "users#search"

  match "/topics/index" => "topics#index"
  match "/topics/edit" => "topics#edit"
  match "/topics/update" => "topics#update"
  match "/topics/create" => "topics#create"
  match "/topics/delete" => "topics#delete"

  match "/debates/index" => "debates#index"
  match "/debates/create" => "debates#create"
  match "/debates/join" => "debates#join"
  match "/debates/start/:id" => "debates#start"
  match "/debates/home/:id" => "debates#home"
  match "/debates/update" => "debates#update"
  match "/debates/retrieve" => "debates#retrieve"
  match "/debates/extend" => "debates#extend"
  match "/debates/end/:id" => "debates#end"
  match "/debates/lengthen" => "debates#lengthen"
  match "/debates/upvote" => "debates#upvote"

  match "user/friend" => "friends#create"

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
