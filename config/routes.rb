Spree::Core::Engine.routes.draw do
  namespace :admin do
    get '/reorder_products' => 'products#reorder'
    resources :products do
      collection do
        post :update_positions
      end
    end
  end
end
