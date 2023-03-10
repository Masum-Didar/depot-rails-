Rails.application.routes.draw do
  # get 'admin/index'
  #
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  scope '(:local)' do
    resources :orders
    resources :line_items
    resources :carts
    # get 'store/index'
    root 'store#index', as: 'store_index', via: :all
  end


  #root_path


  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
