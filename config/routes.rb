require 'sidekiq/web'

HunterMarine::Application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root :to => 'pages#index'
  get "boat_positions/index"
  get "services/action"
  get "services/index"
  # mount HitcentsAuth::Engine, :at => '/hitcents', :as => 'hitcents'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :employment_applications, only: [] do
    collection do
      get '/',               to: 'employment_applications#edit',     as: :root
      put 'update/:step',    to: 'employment_applications#update',   as: :update
      get 'complete',        to: 'employment_applications#complete', as: :complete
      get ':step',           to: 'employment_applications#edit',     as: :step
    end
  end

  resources :contact_submissions, only: [:index, :new, :create]
  get "contact" => 'contact_submissions#new'

  get "about" => 'about#index'
  get "about/on-the-river" => 'about#river', as: :about_river
  get "about/timeline" => 'about#timeline', as: :about_timeline
  get "boat-positions" => 'boat_positions#index', as: :boat_positions
  get "careers" => 'careers#index'

  get "our-services" => 'services#index', as: :services
  get "towing-fleeting" => 'services#towing'
  get "boat-charters" => 'services#charters'
  get "vessel-leasing" => 'services#leasing'

  get "our-resources" => 'resources#index', as: :resources
  get "equipment-register" => 'resources#equipment_register'
  get 'strapping-tables', to: redirect('/equipment-register');
  get "tank-barges" => 'resources#tank_barges'
  get "media-assets" => 'resources#media_assets'
  get 'archive' => 'resources#archive'

  get "about" => 'about#index'
  get "home" => 'pages#index'
  match 'news', :to => 'news#index', :via => :get, :as => :news
  resources :news_articles, :only => [:index, :show], :path => 'news', :controller => 'news'

  get "apply-online" => 'employment_applications#index'

  mount Ckeditor::Engine => '/ckeditor'

  match '/404', to: 'errors#error_404', via: :all
  get '/robots.txt', to: 'robots#index'
end
