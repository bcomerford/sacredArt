Rails.application.routes.draw do
  resources :faqs
  resources :events
  resources :hours

  resources :categories do
    resources :artists
  end

  resources :users, only: [:new, :create, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]

  get 'admin' => 'welcome#admin'

  get 'index'  => 'welcome#index'

  get 'fewremainingfriends' => 'welcome#event'

  get 'about' => 'welcome#about'

  get 'new' => 'welcome#new'

  get 'shop' => 'welcome#shop'

  get 'submissions' => 'welcome#submissions'

  get 'contact' => 'welcome#contact'

  root 'welcome#index'

end
